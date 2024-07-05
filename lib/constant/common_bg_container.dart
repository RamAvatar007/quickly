import 'package:flutter/material.dart';
import 'package:quickly_design_one/main.dart';

import 'app_color.dart';

class CommonBgContainer extends StatelessWidget {
  final child;
  const CommonBgContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mq.height,
      width: mq.width,
      decoration:  BoxDecoration(
          gradient:  LinearGradient(
              colors: [
                primaryColor,
                white2Color,
              ],
              stops: [0.0, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated
          )
      ),
      child: child,
    );
  }
}
