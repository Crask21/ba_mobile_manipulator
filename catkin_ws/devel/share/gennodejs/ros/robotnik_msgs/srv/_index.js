
"use strict";

let SetNamedDigitalOutput = require('./SetNamedDigitalOutput.js')
let SetCurrent = require('./SetCurrent.js')
let set_odometry = require('./set_odometry.js')
let SetElevator = require('./SetElevator.js')
let SetByte = require('./SetByte.js')
let set_modbus_register = require('./set_modbus_register.js')
let GetPOI = require('./GetPOI.js')
let get_digital_input = require('./get_digital_input.js')
let set_modbus_register_bit = require('./set_modbus_register_bit.js')
let QueryAlarms = require('./QueryAlarms.js')
let set_mode = require('./set_mode.js')
let set_height = require('./set_height.js')
let SetString = require('./SetString.js')
let SetLaserMode = require('./SetLaserMode.js')
let LoggerQuery = require('./LoggerQuery.js')
let GetPTZ = require('./GetPTZ.js')
let home = require('./home.js')
let SetEncoderTurns = require('./SetEncoderTurns.js')
let SetInt16 = require('./SetInt16.js')
let GetMotorsHeadingOffset = require('./GetMotorsHeadingOffset.js')
let set_CartesianEuler_pose = require('./set_CartesianEuler_pose.js')
let get_mode = require('./get_mode.js')
let set_ptz = require('./set_ptz.js')
let GetBool = require('./GetBool.js')
let set_analog_output = require('./set_analog_output.js')
let SetTransform = require('./SetTransform.js')
let get_modbus_register = require('./get_modbus_register.js')
let Record = require('./Record.js')
let SetMotorMode = require('./SetMotorMode.js')
let InsertTask = require('./InsertTask.js')
let axis_record = require('./axis_record.js')
let ack_alarm = require('./ack_alarm.js')
let get_alarms = require('./get_alarms.js')
let set_digital_output = require('./set_digital_output.js')
let set_float_value = require('./set_float_value.js')
let set_named_digital_output = require('./set_named_digital_output.js')
let SetMotorPID = require('./SetMotorPID.js')
let SetBuzzer = require('./SetBuzzer.js')
let enable_disable = require('./enable_disable.js')
let SetMotorStatus = require('./SetMotorStatus.js')
let ResetFromSubState = require('./ResetFromSubState.js')

module.exports = {
  SetNamedDigitalOutput: SetNamedDigitalOutput,
  SetCurrent: SetCurrent,
  set_odometry: set_odometry,
  SetElevator: SetElevator,
  SetByte: SetByte,
  set_modbus_register: set_modbus_register,
  GetPOI: GetPOI,
  get_digital_input: get_digital_input,
  set_modbus_register_bit: set_modbus_register_bit,
  QueryAlarms: QueryAlarms,
  set_mode: set_mode,
  set_height: set_height,
  SetString: SetString,
  SetLaserMode: SetLaserMode,
  LoggerQuery: LoggerQuery,
  GetPTZ: GetPTZ,
  home: home,
  SetEncoderTurns: SetEncoderTurns,
  SetInt16: SetInt16,
  GetMotorsHeadingOffset: GetMotorsHeadingOffset,
  set_CartesianEuler_pose: set_CartesianEuler_pose,
  get_mode: get_mode,
  set_ptz: set_ptz,
  GetBool: GetBool,
  set_analog_output: set_analog_output,
  SetTransform: SetTransform,
  get_modbus_register: get_modbus_register,
  Record: Record,
  SetMotorMode: SetMotorMode,
  InsertTask: InsertTask,
  axis_record: axis_record,
  ack_alarm: ack_alarm,
  get_alarms: get_alarms,
  set_digital_output: set_digital_output,
  set_float_value: set_float_value,
  set_named_digital_output: set_named_digital_output,
  SetMotorPID: SetMotorPID,
  SetBuzzer: SetBuzzer,
  enable_disable: enable_disable,
  SetMotorStatus: SetMotorStatus,
  ResetFromSubState: ResetFromSubState,
};
