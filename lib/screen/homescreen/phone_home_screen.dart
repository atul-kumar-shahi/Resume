import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constant/data.dart';
import '../../providers/current_state.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
    Provider.of<CurrentState>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        children: [
          ...List.generate(
              apps.length,
                  (index) => Container(
                // padding: EdgeInsets.only(top: 30),
                margin: const EdgeInsets.only(
                    left: 15,
                    right: 10,
                    top: 10,
                    bottom: 20),
                child: Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        if(apps[index].link!=null){
                          currentState.launchInBrowser(apps[index].link!);
                        }
                        else if(apps[index].screen!=null){
                          currentState.changePhoneScreen(apps[index].screen!,false,title1: apps[index].title);
                          print(currentState.currentPhoneScreen);
                        }
                      },
                      borderRadius: currentState.currentDevice==Devices.ios.iPhone13?8:100,
                      height: 57,
                      width: 57 ,
                      backgroundColor:
                      apps[index].color,
                      child: Center(
                        child: Icon(apps[index].icon),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: 65,
                      child: Center(
                        child:
                        Text(apps[index].title,),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}