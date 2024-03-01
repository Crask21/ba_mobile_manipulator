
"use strict";

let inputs_outputs = require('./inputs_outputs.js');
let ArmStatus = require('./ArmStatus.js');
let RobotnikMotorsStatus = require('./RobotnikMotorsStatus.js');
let BatteryStatusStamped = require('./BatteryStatusStamped.js');
let MotorStatus = require('./MotorStatus.js');
let State = require('./State.js');
let MotorCurrent = require('./MotorCurrent.js');
let Registers = require('./Registers.js');
let Pose2DArray = require('./Pose2DArray.js');
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let LaserStatus = require('./LaserStatus.js');
let encoders = require('./encoders.js');
let RecordStatus = require('./RecordStatus.js');
let Axis = require('./Axis.js');
let ReturnMessage = require('./ReturnMessage.js');
let StringArray = require('./StringArray.js');
let QueryAlarm = require('./QueryAlarm.js');
let StringStamped = require('./StringStamped.js');
let named_input_output = require('./named_input_output.js');
let ptz = require('./ptz.js');
let BatteryStatus = require('./BatteryStatus.js');
let Alarms = require('./Alarms.js');
let AlarmSensor = require('./AlarmSensor.js');
let alarmmonitor = require('./alarmmonitor.js');
let named_inputs_outputs = require('./named_inputs_outputs.js');
let Data = require('./Data.js');
let PresenceSensorArray = require('./PresenceSensorArray.js');
let ElevatorStatus = require('./ElevatorStatus.js');
let SubState = require('./SubState.js');
let OdomManualCalibrationStatusStamped = require('./OdomManualCalibrationStatusStamped.js');
let MotorReferenceValueArray = require('./MotorReferenceValueArray.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let OdomManualCalibrationStatus = require('./OdomManualCalibrationStatus.js');
let MotorHeadingOffset = require('./MotorHeadingOffset.js');
let Cartesian_Euler_pose = require('./Cartesian_Euler_pose.js');
let PantiltStatus = require('./PantiltStatus.js');
let SafetyModuleStatus = require('./SafetyModuleStatus.js');
let MotorReferenceValue = require('./MotorReferenceValue.js');
let PresenceSensor = require('./PresenceSensor.js');
let BoolArray = require('./BoolArray.js');
let alarmsmonitor = require('./alarmsmonitor.js');
let Register = require('./Register.js');
let OdomCalibrationStatus = require('./OdomCalibrationStatus.js');
let WatchdogStatus = require('./WatchdogStatus.js');
let MotorPID = require('./MotorPID.js');
let WatchdogStatusArray = require('./WatchdogStatusArray.js');
let ElevatorAction = require('./ElevatorAction.js');
let PantiltStatusStamped = require('./PantiltStatusStamped.js');
let Logger = require('./Logger.js');
let OdomCalibrationStatusStamped = require('./OdomCalibrationStatusStamped.js');
let InverterStatus = require('./InverterStatus.js');
let Interfaces = require('./Interfaces.js');
let BatteryDockingStatusStamped = require('./BatteryDockingStatusStamped.js');
let LaserMode = require('./LaserMode.js');
let MotorsStatus = require('./MotorsStatus.js');
let MotorsStatusDifferential = require('./MotorsStatusDifferential.js');
let SetElevatorFeedback = require('./SetElevatorFeedback.js');
let SetElevatorResult = require('./SetElevatorResult.js');
let SetElevatorAction = require('./SetElevatorAction.js');
let SetElevatorActionResult = require('./SetElevatorActionResult.js');
let SetElevatorActionGoal = require('./SetElevatorActionGoal.js');
let SetElevatorActionFeedback = require('./SetElevatorActionFeedback.js');
let SetElevatorGoal = require('./SetElevatorGoal.js');

module.exports = {
  inputs_outputs: inputs_outputs,
  ArmStatus: ArmStatus,
  RobotnikMotorsStatus: RobotnikMotorsStatus,
  BatteryStatusStamped: BatteryStatusStamped,
  MotorStatus: MotorStatus,
  State: State,
  MotorCurrent: MotorCurrent,
  Registers: Registers,
  Pose2DArray: Pose2DArray,
  BatteryDockingStatus: BatteryDockingStatus,
  LaserStatus: LaserStatus,
  encoders: encoders,
  RecordStatus: RecordStatus,
  Axis: Axis,
  ReturnMessage: ReturnMessage,
  StringArray: StringArray,
  QueryAlarm: QueryAlarm,
  StringStamped: StringStamped,
  named_input_output: named_input_output,
  ptz: ptz,
  BatteryStatus: BatteryStatus,
  Alarms: Alarms,
  AlarmSensor: AlarmSensor,
  alarmmonitor: alarmmonitor,
  named_inputs_outputs: named_inputs_outputs,
  Data: Data,
  PresenceSensorArray: PresenceSensorArray,
  ElevatorStatus: ElevatorStatus,
  SubState: SubState,
  OdomManualCalibrationStatusStamped: OdomManualCalibrationStatusStamped,
  MotorReferenceValueArray: MotorReferenceValueArray,
  Pose2DStamped: Pose2DStamped,
  OdomManualCalibrationStatus: OdomManualCalibrationStatus,
  MotorHeadingOffset: MotorHeadingOffset,
  Cartesian_Euler_pose: Cartesian_Euler_pose,
  PantiltStatus: PantiltStatus,
  SafetyModuleStatus: SafetyModuleStatus,
  MotorReferenceValue: MotorReferenceValue,
  PresenceSensor: PresenceSensor,
  BoolArray: BoolArray,
  alarmsmonitor: alarmsmonitor,
  Register: Register,
  OdomCalibrationStatus: OdomCalibrationStatus,
  WatchdogStatus: WatchdogStatus,
  MotorPID: MotorPID,
  WatchdogStatusArray: WatchdogStatusArray,
  ElevatorAction: ElevatorAction,
  PantiltStatusStamped: PantiltStatusStamped,
  Logger: Logger,
  OdomCalibrationStatusStamped: OdomCalibrationStatusStamped,
  InverterStatus: InverterStatus,
  Interfaces: Interfaces,
  BatteryDockingStatusStamped: BatteryDockingStatusStamped,
  LaserMode: LaserMode,
  MotorsStatus: MotorsStatus,
  MotorsStatusDifferential: MotorsStatusDifferential,
  SetElevatorFeedback: SetElevatorFeedback,
  SetElevatorResult: SetElevatorResult,
  SetElevatorAction: SetElevatorAction,
  SetElevatorActionResult: SetElevatorActionResult,
  SetElevatorActionGoal: SetElevatorActionGoal,
  SetElevatorActionFeedback: SetElevatorActionFeedback,
  SetElevatorGoal: SetElevatorGoal,
};
