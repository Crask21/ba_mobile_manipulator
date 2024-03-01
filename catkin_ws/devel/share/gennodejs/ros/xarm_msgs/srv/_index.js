
"use strict";

let ConfigToolModbus = require('./ConfigToolModbus.js')
let TCPOffset = require('./TCPOffset.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let GetErr = require('./GetErr.js')
let SetToolModbus = require('./SetToolModbus.js')
let GetControllerDigitalIO = require('./GetControllerDigitalIO.js')
let Move = require('./Move.js')
let SetInt16 = require('./SetInt16.js')
let SetAxis = require('./SetAxis.js')
let GetAnalogIO = require('./GetAnalogIO.js')
let GripperMove = require('./GripperMove.js')
let ClearErr = require('./ClearErr.js')
let GripperConfig = require('./GripperConfig.js')
let GripperState = require('./GripperState.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let SetLoad = require('./SetLoad.js')

module.exports = {
  ConfigToolModbus: ConfigToolModbus,
  TCPOffset: TCPOffset,
  GetDigitalIO: GetDigitalIO,
  GetErr: GetErr,
  SetToolModbus: SetToolModbus,
  GetControllerDigitalIO: GetControllerDigitalIO,
  Move: Move,
  SetInt16: SetInt16,
  SetAxis: SetAxis,
  GetAnalogIO: GetAnalogIO,
  GripperMove: GripperMove,
  ClearErr: ClearErr,
  GripperConfig: GripperConfig,
  GripperState: GripperState,
  SetDigitalIO: SetDigitalIO,
  SetLoad: SetLoad,
};
