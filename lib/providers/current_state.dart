import 'dart:js_util';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:new_resume/constant/data.dart';
import 'package:new_resume/mini_projects/about.dart';
import 'package:new_resume/screen/homescreen/phone_home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentState extends ChangeNotifier{
  DeviceInfo currentDevice=Devices.android.onePlus8Pro;
  int currentKnob=2;
  String ?title;
  Widget currentPhoneScreen=const PhoneHomeScreen();

  bool isMainScreen=true;

  void changeDevice(DeviceInfo device){
    currentDevice=device;
    notifyListeners();
  }
  void changeCurrentKnob(int knob){
    currentKnob=knob;
    notifyListeners();
  }

  Future<void>launchInBrowser(String link)async{
    Uri url=Uri.parse(link);
    if(await canLaunchUrl(url)){
      await launchUrl(url);
    }
    else{
      print('something went wrong');
    }
  }

  void changePhoneScreen(Widget screen,bool isScreen,{String? title1}){
    currentPhoneScreen=screen;
    isMainScreen=isScreen;
    title=title1;
    notifyListeners();
  }
}