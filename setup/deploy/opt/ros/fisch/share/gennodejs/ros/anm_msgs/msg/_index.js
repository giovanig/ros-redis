
"use strict";

let V2XVehicleList = require('./V2XVehicleList.js');
let ShuttleRequest = require('./ShuttleRequest.js');
let SystemHealthReport = require('./SystemHealthReport.js');
let BehaviouralAttributes = require('./BehaviouralAttributes.js');
let BoundingBox = require('./BoundingBox.js');
let V2XTrafficLightList = require('./V2XTrafficLightList.js');
let PathState = require('./PathState.js');
let V2XTrafficLight = require('./V2XTrafficLight.js');
let V2XVehicle = require('./V2XVehicle.js');
let SystemState = require('./SystemState.js');
let ControlCommands = require('./ControlCommands.js');
let V2XStopSignList = require('./V2XStopSignList.js');
let NodeStatus = require('./NodeStatus.js');
let RODElement = require('./RODElement.js');
let HMIReport = require('./HMIReport.js');
let DynamicObstacle = require('./DynamicObstacle.js');
let BoundingBox3d = require('./BoundingBox3d.js');
let V2XStopSign = require('./V2XStopSign.js');
let RODElementFeedback = require('./RODElementFeedback.js');
let VehicleState = require('./VehicleState.js');
let PointCloud2Clusters = require('./PointCloud2Clusters.js');
let NearestAnmWaypoint = require('./NearestAnmWaypoint.js');
let TrackedObjectList = require('./TrackedObjectList.js');
let SystemStateRequest = require('./SystemStateRequest.js');
let DOMReport = require('./DOMReport.js');
let TrackedObject = require('./TrackedObject.js');
let CommandCheckingReport = require('./CommandCheckingReport.js');
let DynamicObstacleList = require('./DynamicObstacleList.js');

module.exports = {
  V2XVehicleList: V2XVehicleList,
  ShuttleRequest: ShuttleRequest,
  SystemHealthReport: SystemHealthReport,
  BehaviouralAttributes: BehaviouralAttributes,
  BoundingBox: BoundingBox,
  V2XTrafficLightList: V2XTrafficLightList,
  PathState: PathState,
  V2XTrafficLight: V2XTrafficLight,
  V2XVehicle: V2XVehicle,
  SystemState: SystemState,
  ControlCommands: ControlCommands,
  V2XStopSignList: V2XStopSignList,
  NodeStatus: NodeStatus,
  RODElement: RODElement,
  HMIReport: HMIReport,
  DynamicObstacle: DynamicObstacle,
  BoundingBox3d: BoundingBox3d,
  V2XStopSign: V2XStopSign,
  RODElementFeedback: RODElementFeedback,
  VehicleState: VehicleState,
  PointCloud2Clusters: PointCloud2Clusters,
  NearestAnmWaypoint: NearestAnmWaypoint,
  TrackedObjectList: TrackedObjectList,
  SystemStateRequest: SystemStateRequest,
  DOMReport: DOMReport,
  TrackedObject: TrackedObject,
  CommandCheckingReport: CommandCheckingReport,
  DynamicObstacleList: DynamicObstacleList,
};
