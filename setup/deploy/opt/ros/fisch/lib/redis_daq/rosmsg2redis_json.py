#!/usr/bin/env python

import sys, os, time
import json
import redis
from collections import OrderedDict
from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty

import rospy, rostopic, rosmsg

# https://github.com/baalexander/rospy_message_converter
from rospy_message_converter import json_message_converter

from sensor_msgs.msg import NavSatFix # http://docs.ros.org/kinetic/api/sensor_msgs/html/msg/NavSatFix.html
from geometry_msgs.msg import Point
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist

import anm_msgs.msg as anm_msgs
import dbw_mkz_msgs.msg as dbw_mkz_msgs

# from dbw_mkz_msgs.msg import BrakeReport

hostname = 'localhost'
port = 6379
password = ''

# Make connection to redis database
con = redis.StrictRedis(
    host=hostname,
    port=port,
    db=0)

current_milli_time = lambda: int(round(time.time() * 1000))

def rosmsg_info():
    topics_and_types = rospy.get_published_topics()
    for topic, ttype in topics_and_types:
        print("topic: %40s \t type: %55s"%(topic, ttype))

def rosmag_redis_json(data,topic):
    # print(topic)
    json_str = json_message_converter.convert_ros_message_to_json(data)

    append_fields = ('"timestamp" : "%s", ')% (str(current_milli_time()).strip())
    json_str = json_str[:1]+append_fields+json_str[1:]

    json_str = '{"' + topic + '" : ' + json_str + ' }'

    # print(json_str)
  
    con.publish(topic, json_str)

    if topic.strip() == "_vehicle_brake_report":
        # var to check if the car is in autonomy mode
        autonomy_status =  '{"_autonomy_state" : {"status" : %s} }' % (data.enabled)
        # print(autonomy_status)
        con.publish("_autonomy_state", autonomy_status)

    

def topicListener():
    rospy.init_node('rosmsg2redis_json', anonymous=False)

    rospy.Subscriber("control_commands", anm_msgs.ControlCommands, callback = rosmag_redis_json, callback_args =  "_control_commands")
    rospy.Subscriber("checked_commands", anm_msgs.ControlCommands, callback = rosmag_redis_json, callback_args =  "_checked_commands")
    rospy.Subscriber("navsat/fix", NavSatFix, callback = rosmag_redis_json, callback_args =  "_navsat_fix")
    rospy.Subscriber("vehicle/throttle_report", dbw_mkz_msgs.ThrottleReport, callback = rosmag_redis_json, callback_args =  "_vehicle_throttle_report")
    rospy.Subscriber("vehicle/steering_report", dbw_mkz_msgs.SteeringReport, callback = rosmag_redis_json, callback_args =  "_vehicle_steering_report")
    rospy.Subscriber("vehicle/brake_report", dbw_mkz_msgs.BrakeReport, callback = rosmag_redis_json, callback_args =  "_vehicle_brake_report")
    rospy.Subscriber("vehicle/gear_report", dbw_mkz_msgs.GearReport, callback = rosmag_redis_json, callback_args =  "_vehicle_gear_report")
    rospy.Subscriber("vehicle_state", anm_msgs.VehicleState, callback = rosmag_redis_json, callback_args =  "_vehicle_state_report")
    rospy.Subscriber("vehicle/p1hc_enable_flag", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_p1hc_enable_flag")
    rospy.Subscriber("drive_mode", String, callback = rosmag_redis_json, callback_args =  "_drive_mode")
    rospy.Subscriber("p1hc_fail_occurred", Empty, callback = rosmag_redis_json, callback_args =  "_p1hc_fail_occurred")
    rospy.Subscriber("p1hc_dataspeed_offline", Bool, callback = rosmag_redis_json, callback_args =  "_p1hc_dataspeed_offline")
    '''
    rospy.Subscriber("can_bus_dbw/can_rx", Bool, callback = rosmag_redis_json, callback_args =  "_can_bus_dbw_can_rx")
    rospy.Subscriber("can_bus_dbw/can_tx", Bool, callback = rosmag_redis_json, callback_args =  "_can_bus_dbw_can_tx")
    rospy.Subscriber("checking_report", Bool, callback = rosmag_redis_json, callback_args =  "_checking_report")
    rospy.Subscriber("cmd_vel", Bool, callback = rosmag_redis_json, callback_args =  "_cmd_vel")
    rospy.Subscriber("ekf_odom", Bool, callback = rosmag_redis_json, callback_args =  "_ekf_odom")
    rospy.Subscriber("etrans/intersections", Bool, callback = rosmag_redis_json, callback_args =  "_etrans_intersections")
    rospy.Subscriber("etrans/vehicles", Bool, callback = rosmag_redis_json, callback_args =  "_etrans_vehicles")
    rospy.Subscriber("global_path", Bool, callback = rosmag_redis_json, callback_args =  "_global_path")
    rospy.Subscriber("gps_odom", Bool, callback = rosmag_redis_json, callback_args =  "_gps_odom")
    rospy.Subscriber("hmi_request", Bool, callback = rosmag_redis_json, callback_args =  "_hmi_request")
    rospy.Subscriber("imu/data", Bool, callback = rosmag_redis_json, callback_args =  "_imu_data")
    rospy.Subscriber("joint_states", Bool, callback = rosmag_redis_json, callback_args =  "_joint_states")
    rospy.Subscriber("knots_and_pts", Bool, callback = rosmag_redis_json, callback_args =  "_knots_and_pts")
    rospy.Subscriber("last_anm_waypoint", Bool, callback = rosmag_redis_json, callback_args =  "_last_anm_waypoint")
    rospy.Subscriber("local_path", Bool, callback = rosmag_redis_json, callback_args =  "_local_path")
    rospy.Subscriber("local_planner/centers", Bool, callback = rosmag_redis_json, callback_args =  "_local_planner_centers")
    rospy.Subscriber("local_planner/modified_grid_map", Bool, callback = rosmag_redis_json, callback_args =  "_local_planner_modified_grid_map")
    rospy.Subscriber("local_planner/path_set", Bool, callback = rosmag_redis_json, callback_args =  "_local_planner_path_set")
    rospy.Subscriber("local_planner/truncated_lines", Bool, callback = rosmag_redis_json, callback_args =  "_local_planner_truncated_lines")
    rospy.Subscriber("local_planner/vehicle_pose", Bool, callback = rosmag_redis_json, callback_args =  "_local_planner_vehicle_pose")
    rospy.Subscriber("map_datum", Bool, callback = rosmag_redis_json, callback_args =  "_map_datum")
    rospy.Subscriber("nav_pt_avail", Bool, callback = rosmag_redis_json, callback_args =  "_nav_pt_avail")
    rospy.Subscriber("nearest_anm_waypoint", Bool, callback = rosmag_redis_json, callback_args =  "_nearest_anm_waypoint")
    rospy.Subscriber("novatel_data/bestpos", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_bestpos")
    rospy.Subscriber("novatel_data/corrimudata", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_corrimudata")
    rospy.Subscriber("novatel_data/inscov", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_inscov")
    rospy.Subscriber("novatel_data/inspvax", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_inspvax")
    rospy.Subscriber("odom_datum", Bool, callback = rosmag_redis_json, callback_args =  "_odom_datum")
    rospy.Subscriber("parallel_parking_spot_coord", Bool, callback = rosmag_redis_json, callback_args =  "_parallel_parking_spot_coord")
    rospy.Subscriber("parallel_parking_visualization", Bool, callback = rosmag_redis_json, callback_args =  "_parallel_parking_visualization")
    rospy.Subscriber("rea_perception_lane_msg", Bool, callback = rosmag_redis_json, callback_args =  "_rea_perception_lane_msg")
    rospy.Subscriber("rea_perception_object_msg", Bool, callback = rosmag_redis_json, callback_args =  "_rea_perception_object_msg")
    rospy.Subscriber("rea_perception_orientation_msg", Bool, callback = rosmag_redis_json, callback_args =  "_rea_perception_orientation_msg")
    rospy.Subscriber("rea_perception_parking_space_msg", Bool, callback = rosmag_redis_json, callback_args =  "_rea_perception_parking_space_msg")
    rospy.Subscriber("rea_perception_traffic_light_msg", Bool, callback = rosmag_redis_json, callback_args =  "_rea_perception_traffic_light_msg")
    rospy.Subscriber("rea_perception_traffic_sign_msg", Bool, callback = rosmag_redis_json, callback_args =  "_rea_perception_traffic_sign_msg")
    rospy.Subscriber("ref_ekf/node_status", Bool, callback = rosmag_redis_json, callback_args =  "_ref_ekf_node_status")
    rospy.Subscriber("ref_ekf/parameter_descriptions", Bool, callback = rosmag_redis_json, callback_args =  "_ref_ekf_parameter_descriptions")
    rospy.Subscriber("ref_ekf/parameter_updates", Bool, callback = rosmag_redis_json, callback_args =  "_ref_ekf_parameter_updates")
    rospy.Subscriber("reverse_parking_spot_coord", Bool, callback = rosmag_redis_json, callback_args =  "_reverse_parking_spot_coord")
    rospy.Subscriber("reverse_parking_visualization", Bool, callback = rosmag_redis_json, callback_args =  "_reverse_parking_visualization")
    rospy.Subscriber("ros_lidar", Bool, callback = rosmag_redis_json, callback_args =  "_ros_lidar")
    rospy.Subscriber("rosout", Bool, callback = rosmag_redis_json, callback_args =  "_rosout")
    rospy.Subscriber("rosout_agg", Bool, callback = rosmag_redis_json, callback_args =  "_rosout_agg")
    rospy.Subscriber("route_goal", Bool, callback = rosmag_redis_json, callback_args =  "_route_goal")
    rospy.Subscriber("sys_request", Bool, callback = rosmag_redis_json, callback_args =  "_sys_request")
    rospy.Subscriber("system_state", Bool, callback = rosmag_redis_json, callback_args =  "_system_state")
    rospy.Subscriber("tf", Bool, callback = rosmag_redis_json, callback_args =  "_tf")
    rospy.Subscriber("tf_static", Bool, callback = rosmag_redis_json, callback_args =  "_tf_static")
    rospy.Subscriber("v2x_rviz", Bool, callback = rosmag_redis_json, callback_args =  "_v2x_rviz")
    rospy.Subscriber("v2x_stop_sign_list", Bool, callback = rosmag_redis_json, callback_args =  "_v2x_stop_sign_list")
    rospy.Subscriber("v2x_stop_sign_list_viz", Bool, callback = rosmag_redis_json, callback_args =  "_v2x_stop_sign_list_viz")
    rospy.Subscriber("v2x_trafficlight", Bool, callback = rosmag_redis_json, callback_args =  "_v2x_trafficlight")
    rospy.Subscriber("v2x_vehicle", Bool, callback = rosmag_redis_json, callback_args =  "_v2x_vehicle")
    rospy.Subscriber("vehicle/brake_cmd", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_brake_cmd")
    rospy.Subscriber("vehicle/brake_info_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_brake_info_report")
    rospy.Subscriber("vehicle/controller_done", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_controller_done")
    rospy.Subscriber("vehicle/dbw_enabled", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_dbw_enabled")
    rospy.Subscriber("vehicle/disable", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_disable")
    rospy.Subscriber("vehicle/enable", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_enable")
    rospy.Subscriber("vehicle/fuel_level_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_fuel_level_report")
    rospy.Subscriber("vehicle/gear_cmd", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_gear_cmd")
    rospy.Subscriber("vehicle/gps/fix", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_gps_fix")
    rospy.Subscriber("vehicle/gps/time", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_gps_time")
    rospy.Subscriber("vehicle/gps/vel", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_gps_vel")
    rospy.Subscriber("vehicle/imu/data_raw", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_imu_data_raw")
    rospy.Subscriber("vehicle/joint_states", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_joint_states")
    rospy.Subscriber("vehicle/misc_1_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_misc_1_report")
    rospy.Subscriber("vehicle/p1hc_clear_ds", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_p1hc_clear_ds")
    rospy.Subscriber("vehicle/sonar_cloud", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_sonar_cloud")
    rospy.Subscriber("vehicle/steering_cmd", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_steering_cmd")
    rospy.Subscriber("vehicle/surround_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_surround_report")
    rospy.Subscriber("vehicle/throttle_cmd", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_throttle_cmd")
    rospy.Subscriber("vehicle/throttle_info_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_throttle_info_report")
    rospy.Subscriber("vehicle/tire_pressure_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_tire_pressure_report")
    rospy.Subscriber("vehicle/turn_signal_cmd", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_turn_signal_cmd")
    rospy.Subscriber("vehicle/twist", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_twist")
    rospy.Subscriber("vehicle/vin", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_vin")
    rospy.Subscriber("vehicle/wheel_position_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_wheel_position_report")
    rospy.Subscriber("vehicle/wheel_speed_report", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_wheel_speed_report")
    rospy.Subscriber("vehicle_control/node_status", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_control_node_status")
    rospy.Subscriber("vehicle_control/parameter_descriptions", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_control_parameter_descriptions")
    rospy.Subscriber("vehicle_control/parameter_updates", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_control_parameter_updates")
    rospy.Subscriber("vehicle_control_bypass", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_control_bypass")
    '''   


    rospy.spin()


if __name__ == '__main__':
    try:
        topicListener()
    except rospy.ROSInterruptException:
        pass