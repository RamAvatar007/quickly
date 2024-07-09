import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container2.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/account_screen/account_screen_bottom_data.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: CommonBgContainer2(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: mq.width * .04),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: mq.width * .14,
                      height: mq.height * .07,
                      child: Image.asset(
                        logoWhiteImage,
                        fit: BoxFit.fill,
                      )),
                  Column(
                    children: [
                      CommonText1(text: "Account", fontSize: fo20, fontWeight: fBoldFont, fontColor: blackColor),
                      Padding(
                        padding: EdgeInsets.only(top: mq.height * .015, bottom: mq.height * .01),
                        child: SizedBox(
                          height: mq.height * .1,
                          width: mq.width * .2,
                          child: CircleAvatar(
                            backgroundColor: brown98Color,
                            radius: mq.height * .1 / 2.1,
                          ),
                        ),
                      ),
                      CommonText(text: "User Name", fontSize: fo15, fontWeight: fBoldFont, fontColor: blackColor),
                    ],
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: primaryColor,
                    size: 26,
                  )
                ],
              ),
              SizedBox(
                height: mq.height * .045,
              ),
              const AccountScreenBottomData(),
            ],
          ),
        ),
      )),
    );
  }
}
