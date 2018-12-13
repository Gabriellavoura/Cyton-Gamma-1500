
"use strict";

let RestartController = require('./RestartController.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let SetCompliancePunch = require('./SetCompliancePunch.js')
let SetComplianceSlope = require('./SetComplianceSlope.js')
let SetSpeed = require('./SetSpeed.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')
let StartController = require('./StartController.js')
let StopController = require('./StopController.js')
let TorqueEnable = require('./TorqueEnable.js')

module.exports = {
  RestartController: RestartController,
  SetComplianceMargin: SetComplianceMargin,
  SetCompliancePunch: SetCompliancePunch,
  SetComplianceSlope: SetComplianceSlope,
  SetSpeed: SetSpeed,
  SetTorqueLimit: SetTorqueLimit,
  StartController: StartController,
  StopController: StopController,
  TorqueEnable: TorqueEnable,
};
