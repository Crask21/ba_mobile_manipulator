
"use strict";

let MotorGains = require('./MotorGains.js')
let RegisterValues = require('./RegisterValues.js')
let Reboot = require('./Reboot.js')
let OperatingModes = require('./OperatingModes.js')
let RobotInfo = require('./RobotInfo.js')
let TorqueEnable = require('./TorqueEnable.js')

module.exports = {
  MotorGains: MotorGains,
  RegisterValues: RegisterValues,
  Reboot: Reboot,
  OperatingModes: OperatingModes,
  RobotInfo: RobotInfo,
  TorqueEnable: TorqueEnable,
};
