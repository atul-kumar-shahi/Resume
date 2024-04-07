import 'dart:js_util';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:new_resume/constant/data.dart';

class CurrentState extends ChangeNotifier{
  DeviceInfo currentDevice=Devices.android.onePlus8Pro;
  int currentKnob=2;

  void changeDevice(DeviceInfo device){
    currentDevice=device;
    notifyListeners();
  }
  void changeCurrentKnob(int knob){
    currentKnob=knob;
    notifyListeners();
  }
}