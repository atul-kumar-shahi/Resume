import 'dart:ui';

import 'package:flutter/material.dart';
class FrostedContainer extends StatelessWidget {
  const FrostedContainer({
    super.key, required this.height, required this.width, required this.childG,
  });

  final double height;
  final double width;
  final Widget ?childG;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              BackdropFilter(filter: ImageFilter.blur(sigmaX: 7,sigmaY: 7),child: Container( height: height,
                width: width,),),
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.3),

                        ]
                    )
                ),
                child: childG,
              )
            ],
          ),
        ),
      ),
    );
  }
}