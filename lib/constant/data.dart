import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:new_resume/mini_projects/about.dart';
import 'package:new_resume/models/app_model.dart';
import '../models/colors_model.dart';
import '../models/device_model.dart';

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.onePlus8Pro, icon: Icons.android),
  DeviceModel(device: Devices.ios.iPhone13, icon: Icons.apple),
  DeviceModel(device: Devices.ios.iPad, icon: Icons.tablet),
];

List<ColorModel> colorPallete = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),


];

List<AppModel>apps=[
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,screen: const About()),
  AppModel(title: 'LinkedIn', color: Colors.white,icon: Icons.abc,link: linkedIn),
  AppModel(title: 'Instagram', color: Colors.white,icon: Icons.accessibility_new,link: linkedIn),
  AppModel(title: 'GitHub', color: Colors.white,icon: Icons.fastfood,link:github),
  AppModel(title: 'Resume', color: Colors.white,icon: Icons.add_a_photo,link:resume),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
  AppModel(title: 'About', color: Colors.white,icon: Icons.ac_unit_outlined,link: linkedIn),
];


const String linkedIn='https://www.linkedin.com/in/atul-kumar-a5a378238/';
const String github='https://github.com/atul-kumar-shahi';
const String resume='https://drive.google.com/file/d/1T0FZd8BIZ5uEfyXzKoCJImZ0_hzQ_KCj/view?usp=drive_link';
