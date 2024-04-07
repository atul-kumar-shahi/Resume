import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_resume/constant/data.dart';
import 'package:new_resume/providers/current_state.dart';
import 'package:new_resume/screen/homescreen/phone_home_screen.dart';
import 'package:new_resume/screen/homescreen/phone_screen_wrapper.dart';
import 'package:provider/provider.dart';

import '../../widgets/frosted_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState, int>(
              selector: (context, provider) => provider.currentKnob,
              builder: (context, value, child) {
                return Container(
                  decoration: BoxDecoration(
                      gradient:
                          colorPallete[currentState.currentKnob].gradient),
                );
              }),
          Selector<CurrentState, int>(
              selector: (context, provider) => provider.currentKnob,
              builder: (context, value, child) {
                return SvgPicture.asset(
                  colorPallete[currentState.currentKnob].svgPath,
                  fit: BoxFit.cover,
                  height: size.height,
                );
              }),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      FrostedContainer(
                        height: 345,
                        width: 247,
                        childG: Placeholder(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FrostedContainer(
                        height: 175,
                        width: 247,
                        childG: Placeholder(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(
                        builder: (context, value, child) {
                      return DeviceFrame(
                        device: currentState.currentDevice,
                        screen: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: colorPallete[currentState.currentKnob]
                                        .gradient
                                        .colors)),
                            child: ScreenWrapper(childG:currentState.currentPhoneScreen),
                      ));
                    }),
                  ),
                  Column(
                    children: [
                      FrostedContainer(
                          height: 345,
                          width: 247,
                          childG: Center(
                            child: Wrap(
                              children: [
                                ...List.generate(
                                    colorPallete.length,
                                    (index) => Selector<CurrentState, int>(
                                        selector: (context, provider) =>
                                            provider.currentKnob,
                                        builder: (context, value, child) {
                                          return CustomButton(
                                            margin: const EdgeInsets.all(10),
                                            height: 52,
                                            width: 52,
                                            onPressed: () {
                                              currentState
                                                  .changeCurrentKnob(index);
                                            },
                                            animate: true,
                                            pressed: currentState.currentKnob ==
                                                    index
                                                ? Pressed.pressed
                                                : Pressed.notPressed,
                                            isThreeD: true,
                                            shadowColor: Colors.white,
                                            borderRadius: 100,
                                            backgroundColor:
                                                colorPallete[index].color,
                                          );
                                        })),
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const FrostedContainer(
                        height: 175,
                        width: 247,
                        childG: Placeholder(),
                      ),
                    ],
                  ),
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
                      (index) => Selector<CurrentState, DeviceInfo>(
                          selector: (context, provider) =>
                              provider.currentDevice,
                          builder: (context, value, child) {
                            return CustomButton(
                              height: 38,
                              width: 38,
                              borderRadius: 100,
                              backgroundColor: Colors.black,
                              onPressed: () {
                                currentState
                                    .changeDevice(devices[index].device);
                              },
                              isThreeD: true,
                              animate: true,
                              pressed: currentState.currentDevice ==
                                      devices[index].device
                                  ? Pressed.pressed
                                  : Pressed.notPressed,
                              shadowColor: Colors.white,
                              child: Center(
                                child: Icon(
                                  devices[index].icon,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
