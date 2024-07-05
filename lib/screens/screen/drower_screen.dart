import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container2.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: CommonBgContainer2(
        child: Padding(
          padding: EdgeInsets.only(left: mq.width *.06,right: mq.width *.06,top: mq.height * .07),
          child: Column(
            children: [
            Row(children: [
            SizedBox(
                width: mq.width * .14,
                height: mq.height * .07,
                child: Image.asset(logoWhiteImage,fit: BoxFit.fill,)),
              Column(
                children: [
                  CommonText1(text: "Account", fontSize: fo20, fontWeight: fBoldFont, fontColor: blackColor),
                  SizedBox(
                    height: mq.height *.1,
                    width: mq.width *.2,
                    child: CircleAvatar(
                      backgroundColor: brown98Color,
                      radius: mq.height *.1/2.1,
                    ),
                  ),
                  CommonText(text: "User Name", fontSize: fo15, fontWeight: fBoldFont, fontColor: blackColor),
                ],
              ),

            ],),
            ],
          ),
        ),
      ),
    );
  }
}
