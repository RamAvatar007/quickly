import 'package:flutter/material.dart';
import 'package:quickly_design_one/main.dart';

import 'app_color.dart';

class CommonBgContainer2 extends StatelessWidget {
  final child;
  const CommonBgContainer2({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mq.height,
      width: mq.width,
      child: Row(
        children: [
          Container(
            width: mq.width * .3,
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
          ),
          Container(width: mq.width *.7,
          color: whiteColor,
          ),
        ],
      ),
    );
  }
}
