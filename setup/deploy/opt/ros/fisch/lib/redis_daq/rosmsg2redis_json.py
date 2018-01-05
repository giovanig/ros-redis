#!/usr/bin/env python

import sys, os, time
import json
import redis
from collections import OrderedDict

import rospy, rostopic, rosmsg

# https://github.com/baalexander/rospy_message_converter
from rospy_message_converter import json_message_converter

from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty
from std_msgs.msg import Float32

from can_msgs.msg import Frame

from dynamic_reconfigure.msg import Config
from dynamic_reconfigure.msg import ConfigDescription

from nav_msgs.msg import OccupancyGrid
from nav_msgs.msg import Odometry
from nav_msgs.msg import Path

# http://docs.ros.org/kinetic/api/sensor_msgs/html/msg/NavSatFix.html
from sensor_msgs.msg import NavSatFix
from sensor_msgs.msg import Imu
from sensor_msgs.msg import JointState
from sensor_msgs.msg import PointCloud2
from sensor_msgs.msg import TimeReference

from geometry_msgs.msg import Point
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from geometry_msgs.msg import PointStamped
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import PoseWithCovarianceStamped
from geometry_msgs.msg import TwistStamped

from tf2_msgs.msg import TFMessage

from visualization_msgs.msg import Marker
from visualization_msgs.msg import MarkerArray

import anm_msgs.msg as anm_msgs
import dbw_mkz_msgs.msg as dbw_mkz_msgs
# # import rea_perception_msgs.msg as rea_perception_msgs
import etrans_msgs.msg as etrans_msgs

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
    json_str = json_str.replace('NaN', '"NaN"')

    # print(json_str)
  
    con.publish(topic, json_str)

    if topic.strip() == "_vehicle_brake_report":
        # var to check if the car is in autonomy mode
        autonomy_status =  '{"_autonomy_state" : {"timestamp" : "%s", "status" : "%s"} }' % (str(int(data.header.stamp.to_time()*1000)), data.enabled)
        # print(autonomy_status)
        con.publish("_autonomy_state", autonomy_status)

    

def topicListener():
    rospy.init_node('rosmsg2redis_json', anonymous=False)

    rospy.Subscriber("vehicle/steering_report", dbw_mkz_msgs.SteeringReport, callback = rosmag_redis_json, callback_args =  "_vehicle_steering_report")
    rospy.Subscriber("vehicle/gear_report", dbw_mkz_msgs.GearReport, callback = rosmag_redis_json, callback_args =  "_vehicle_gear_report")
    rospy.Subscriber("vehicle_state", anm_msgs.VehicleState, callback = rosmag_redis_json, callback_args =  "_vehicle_state_report")
    rospy.Subscriber("control_commands", anm_msgs.ControlCommands, callback = rosmag_redis_json, callback_args =  "_control_commands")
    rospy.Subscriber("checked_commands", anm_msgs.ControlCommands, callback = rosmag_redis_json, callback_args =  "_checked_commands")
    rospy.Subscriber("navsat/fix", NavSatFix, callback = rosmag_redis_json, callback_args =  "_navsat_fix")
    rospy.Subscriber("vehicle/throttle_report", dbw_mkz_msgs.ThrottleReport, callback = rosmag_redis_json, callback_args =  "_vehicle_throttle_report")
    rospy.Subscriber("vehicle/brake_report", dbw_mkz_msgs.BrakeReport, callback = rosmag_redis_json, callback_args =  "_vehicle_brake_report")
    rospy.Subscriber("odom_datum", NavSatFix, callback = rosmag_redis_json, callback_args =  "_odom_datum")

    '''
    rospy.Subscriber("vehicle/p1hc_enable_flag", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_p1hc_enable_flag")
    rospy.Subscriber("drive_mode", String, callback = rosmag_redis_json, callback_args =  "_drive_mode")
    rospy.Subscriber("p1hc_fail_occurred", Empty, callback = rosmag_redis_json, callback_args =  "_p1hc_fail_occurred")
    rospy.Subscriber("p1hc_dataspeed_offline", Bool, callback = rosmag_redis_json, callback_args =  "_p1hc_dataspeed_offline")
    rospy.Subscriber("can_bus_dbw/can_rx", Frame, callback = rosmag_redis_json, callback_args =  "_can_bus_dbw_can_rx")
    rospy.Subscriber("can_bus_dbw/can_tx", Frame, callback = rosmag_redis_json, callback_args =  "_can_bus_dbw_can_tx")
    rospy.Subscriber("checking_report", anm_msgs.CommandCheckingReport, callback = rosmag_redis_json, callback_args =  "_checking_report")
    rospy.Subscriber("clicked_point", PointStamped, callback = rosmag_redis_json, callback_args =  "_clicked_point")
    rospy.Subscriber("cmd_vel", Float32, callback = rosmag_redis_json, callback_args =  "_cmd_vel")
    rospy.Subscriber("ekf_odom", Odometry, callback = rosmag_redis_json, callback_args =  "_ekf_odom")
    rospy.Subscriber("etrans/intersections", etrans_msgs.etrans_intersection, callback = rosmag_redis_json, callback_args =  "_etrans_intersections")
    rospy.Subscriber("etrans/vehicles", etrans_msgs.etrans_vehicle, callback = rosmag_redis_json, callback_args =  "_etrans_vehicles")
    rospy.Subscriber("global_path", Path, callback = rosmag_redis_json, callback_args =  "_global_path")
    rospy.Subscriber("gps_odom", Odometry, callback = rosmag_redis_json, callback_args =  "_gps_odom")
    rospy.Subscriber("hmi_request", anm_msgs.HMIReport, callback = rosmag_redis_json, callback_args =  "_hmi_request")
    rospy.Subscriber("imu/data", Imu, callback = rosmag_redis_json, callback_args =  "_imu_data")
    rospy.Subscriber("knots_and_pts", Marker, callback = rosmag_redis_json, callback_args =  "_knots_and_pts")
    rospy.Subscriber("last_anm_waypoint", String, callback = rosmag_redis_json, callback_args =  "_last_anm_waypoint")
    rospy.Subscriber("local_path", Path, callback = rosmag_redis_json, callback_args =  "_local_path")
    rospy.Subscriber("local_planner/centers", MarkerArray, callback = rosmag_redis_json, callback_args =  "_local_planner_centers")
    # OccupancyGrid is a big message type, will take too much data
    # # rospy.Subscriber("local_planner/modified_grid_map", OccupancyGrid, callback = rosmag_redis_json, callback_args =  "_local_planner_modified_grid_map")
    rospy.Subscriber("local_planner/path_set", MarkerArray, callback = rosmag_redis_json, callback_args =  "_local_planner_path_set")
    rospy.Subscriber("local_planner/truncated_lines", Marker, callback = rosmag_redis_json, callback_args =  "_local_planner_truncated_lines")
    rospy.Subscriber("local_planner/vehicle_pose", Marker, callback = rosmag_redis_json, callback_args =  "_local_planner_vehicle_pose")
    rospy.Subscriber("map_datum", NavSatFix, callback = rosmag_redis_json, callback_args =  "_map_datum")
    rospy.Subscriber("move_base_simple/goal", PoseStamped, callback = rosmag_redis_json, callback_args =  "_move_base_simple_goal")
    rospy.Subscriber("nav_pt_avail", Bool, callback = rosmag_redis_json, callback_args =  "_nav_pt_avail")
    rospy.Subscriber("nearest_anm_waypoint", anm_msgs.NearestAnmWaypoint, callback = rosmag_redis_json, callback_args =  "_nearest_anm_waypoint")
    # # rospy.Subscriber("novatel_data/bestpos", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_bestpos")
    # # rospy.Subscriber("novatel_data/corrimudata", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_corrimudata")
    # # rospy.Subscriber("novatel_data/inscov", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_inscov")
    # # rospy.Subscriber("novatel_data/inspvax", Bool, callback = rosmag_redis_json, callback_args =  "_novatel_data_inspvax")
    rospy.Subscriber("parallel_parking_spot_coord", Path, callback = rosmag_redis_json, callback_args =  "_parallel_parking_spot_coord")
    rospy.Subscriber("parallel_parking_visualization", MarkerArray, callback = rosmag_redis_json, callback_args =  "_parallel_parking_visualization")
    # # rospy.Subscriber("rea_perception_lane_msg", rea_perception_msgs.rea_perception_lane_msg, callback = rosmag_redis_json, callback_args =  "_rea_perception_lane_msg")
    # # rospy.Subscriber("rea_perception_object_msg", rea_perception_msgs.rea_perception_object_msg, callback = rosmag_redis_json, callback_args =  "_rea_perception_object_msg")
    # # rospy.Subscriber("rea_perception_orientation_msg", rea_perception_msgs.rea_perception_orientation_msg, callback = rosmag_redis_json, callback_args =  "_rea_perception_orientation_msg")
    # # rospy.Subscriber("rea_perception_parking_space_msg", rea_perception_msgs.rea_perception_parking_space_msg, callback = rosmag_redis_json, callback_args =  "_rea_perception_parking_space_msg")
    # # rospy.Subscriber("rea_perception_traffic_light_msg", rea_perception_msgs.rea_perception_traffic_light_msg, callback = rosmag_redis_json, callback_args =  "_rea_perception_traffic_light_msg")
    # # rospy.Subscriber("rea_perception_traffic_sign_msg", rea_perception_msgs.rea_perception_traffic_sign_msg, callback = rosmag_redis_json, callback_args =  "_rea_perception_traffic_sign_msg")
    rospy.Subscriber("ref_ekf/node_status", anm_msgs.NodeStatus, callback = rosmag_redis_json, callback_args =  "_ref_ekf_node_status")
    rospy.Subscriber("ref_ekf/parameter_descriptions", ConfigDescription, callback = rosmag_redis_json, callback_args =  "_ref_ekf_parameter_descriptions")
    rospy.Subscriber("ref_ekf/parameter_updates", Config, callback = rosmag_redis_json, callback_args =  "_ref_ekf_parameter_updates")
    rospy.Subscriber("reverse_parking_spot_coord", Path, callback = rosmag_redis_json, callback_args =  "_reverse_parking_spot_coord")
    rospy.Subscriber("reverse_parking_visualization", MarkerArray, callback = rosmag_redis_json, callback_args =  "_reverse_parking_visualization")
    # # rospy.Subscriber("ros_lidar", Bool, callback = rosmag_redis_json, callback_args =  "_ros_lidar")
    # # rospy.Subscriber("rosout", Bool, callback = rosmag_redis_json, callback_args =  "_rosout")
    # # rospy.Subscriber("rosout_agg", Bool, callback = rosmag_redis_json, callback_args =  "_rosout_agg")
    rospy.Subscriber("route_goal", String, callback = rosmag_redis_json, callback_args =  "_route_goal")
    rospy.Subscriber("sys_request", anm_msgs.SystemStateRequest, callback = rosmag_redis_json, callback_args =  "_sys_request")
    rospy.Subscriber("system_state", anm_msgs.SystemState, callback = rosmag_redis_json, callback_args =  "_system_state")
    rospy.Subscriber("tf", TFMessage, callback = rosmag_redis_json, callback_args =  "_tf")
    rospy.Subscriber("tf_static", TFMessage, callback = rosmag_redis_json, callback_args =  "_tf_static")
    # # rospy.Subscriber("v2x_rviz", MarkerArray, callback = rosmag_redis_json, callback_args =  "_v2x_rviz")
    rospy.Subscriber("v2x_stop_sign_list", anm_msgs.V2XStopSignList, callback = rosmag_redis_json, callback_args =  "_v2x_stop_sign_list")
    rospy.Subscriber("v2x_stop_sign_list_viz", MarkerArray, callback = rosmag_redis_json, callback_args =  "_v2x_stop_sign_list_viz")
    rospy.Subscriber("v2x_trafficlight", anm_msgs.V2XTrafficLightList, callback = rosmag_redis_json, callback_args =  "_v2x_trafficlight")
    rospy.Subscriber("v2x_vehicle", anm_msgs.V2XVehicleList, callback = rosmag_redis_json, callback_args =  "_v2x_vehicle")
    rospy.Subscriber("vehicle_control/node_status", anm_msgs.NodeStatus, callback = rosmag_redis_json, callback_args =  "_vehicle_control_node_status")
    rospy.Subscriber("vehicle_control/parameter_descriptions", ConfigDescription, callback = rosmag_redis_json, callback_args =  "_vehicle_control_parameter_descriptions")
    rospy.Subscriber("vehicle_control/parameter_updates", Config, callback = rosmag_redis_json, callback_args =  "_vehicle_control_parameter_updates")
    rospy.Subscriber("vehicle_state", anm_msgs.VehicleState, callback = rosmag_redis_json, callback_args =  "_vehicle_state")   
    rospy.Subscriber("vehicle/brake_cmd", dbw_mkz_msgs.BrakeCmd, callback = rosmag_redis_json, callback_args =  "_vehicle_brake_cmd")
    # # rospy.Subscriber("vehicle/brake_info_report", dbw_mkz_msgs.BrakeInfoReport, callback = rosmag_redis_json, callback_args =  "_vehicle_brake_info_report")
    rospy.Subscriber("vehicle/controller_done", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_controller_done")
    rospy.Subscriber("vehicle/dbw_enabled", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_dbw_enabled")
    rospy.Subscriber("vehicle/disable", Empty, callback = rosmag_redis_json, callback_args =  "_vehicle_disable")
    rospy.Subscriber("vehicle/enable", Empty, callback = rosmag_redis_json, callback_args =  "_vehicle_enable")
    # # rospy.Subscriber("vehicle/fuel_level_report", dbw_mkz_msgs.FuelLevelReport, callback = rosmag_redis_json, callback_args =  "_vehicle_fuel_level_report")
    rospy.Subscriber("vehicle/gear_cmd", dbw_mkz_msgs.GearCmd, callback = rosmag_redis_json, callback_args =  "_vehicle_gear_cmd")
    rospy.Subscriber("vehicle/gps/fix", NavSatFix, callback = rosmag_redis_json, callback_args =  "_vehicle_gps_fix")
    rospy.Subscriber("vehicle/gps/time", TimeReference, callback = rosmag_redis_json, callback_args =  "_vehicle_gps_time")
    rospy.Subscriber("vehicle/gps/vel", TwistStamped, callback = rosmag_redis_json, callback_args =  "_vehicle_gps_vel")
    rospy.Subscriber("vehicle/imu/data_raw", Imu, callback = rosmag_redis_json, callback_args =  "_vehicle_imu_data_raw")
    rospy.Subscriber("vehicle/joint_states", JointState, callback = rosmag_redis_json, callback_args =  "_vehicle_joint_states")
    rospy.Subscriber("vehicle/misc_1_report", dbw_mkz_msgs.Misc1Report, callback = rosmag_redis_json, callback_args =  "_vehicle_misc_1_report")
    rospy.Subscriber("vehicle/p1hc_clear_ds", Empty, callback = rosmag_redis_json, callback_args =  "_vehicle_p1hc_clear_ds")
    # # rospy.Subscriber("vehicle/sonar_cloud", PointCloud2, callback = rosmag_redis_json, callback_args =  "_vehicle_sonar_cloud")
    rospy.Subscriber("vehicle/steering_cmd", dbw_mkz_msgs.SteeringCmd, callback = rosmag_redis_json, callback_args =  "_vehicle_steering_cmd")
    rospy.Subscriber("vehicle/surround_report", dbw_mkz_msgs.SurroundReport, callback = rosmag_redis_json, callback_args =  "_vehicle_surround_report")
    rospy.Subscriber("vehicle/throttle_cmd", dbw_mkz_msgs.ThrottleCmd, callback = rosmag_redis_json, callback_args =  "_vehicle_throttle_cmd")
    rospy.Subscriber("vehicle/throttle_info_report", dbw_mkz_msgs.ThrottleInfoReport, callback = rosmag_redis_json, callback_args =  "_vehicle_throttle_info_report")
    rospy.Subscriber("vehicle/tire_pressure_report", dbw_mkz_msgs.TirePressureReport, callback = rosmag_redis_json, callback_args =  "_vehicle_tire_pressure_report")
    rospy.Subscriber("vehicle/turn_signal_cmd", dbw_mkz_msgs.TurnSignalCmd, callback = rosmag_redis_json, callback_args =  "_vehicle_turn_signal_cmd")
    rospy.Subscriber("vehicle/twist", TwistStamped, callback = rosmag_redis_json, callback_args =  "_vehicle_twist")
    rospy.Subscriber("vehicle/vin", String, callback = rosmag_redis_json, callback_args =  "_vehicle_vin")
    rospy.Subscriber("vehicle/wheel_position_report", dbw_mkz_msgs.WheelPositionReport, callback = rosmag_redis_json, callback_args =  "_vehicle_wheel_position_report")
    rospy.Subscriber("vehicle/wheel_speed_report", dbw_mkz_msgs.WheelSpeedReport, callback = rosmag_redis_json, callback_args =  "_vehicle_wheel_speed_report")

    '''
    rospy.spin()


if __name__ == '__main__':
    try:
        topicListener()
    except rospy.ROSInterruptException:
        pass