import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_resume/constant/data.dart';
import 'package:new_resume/providers/current_state.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    CurrentState currentState=Provider.of<CurrentState>(context,listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue.shade900,
              Colors.black45,
            ], begin: Alignment.topLeft)),
          ),
          SvgPicture.asset(
            'assets/images/meteor.svg',
            fit: BoxFit.cover,
            height: size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(
                      builder: (context,value,child) {
                        return DeviceFrame(
                          device: currentState.currentDevice  ,
                          screen: Container(
                            color: Colors.red,
                            child: const Center(
                              child: Text(
                                "Hello World",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                      devices.length,
                      (index) => Selector<CurrentState,DeviceInfo>(
                        selector: (context,provider)=>provider.currentDevice,
                        builder: (context,value,child) {
                          return CustomButton(
                            height: 38,
                                width: 38,
                                borderRadius: 100,
                                backgroundColor: Colors.black,
                                onPressed: () {
                              currentState.changeDevice(devices[index].device);
                                },
                                isThreeD: true,
                            animate: true,
                            pressed: currentState.currentDevice==devices[index].device?Pressed.pressed:Pressed.notPressed,
                            shadowColor: Colors.white,
                                child: Center(
                                  child: Icon(
                                    devices[index].icon,

                                    color: Colors.white,
                                  ),
                                ),
                              );
                        }
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
