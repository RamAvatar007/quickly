import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/constant/mq_constant.dart';
import 'package:quickly_design_one/main.dart';
import 'profile_screen_bottom_data.dart';

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
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: CommonText1(text: "Profile", fontSize: fo20, fontWeight: fBoldFont, fontColor: blackColor),
          centerTitle: true,
          leading:  InkWell(
              onTap: (){
               Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new_outlined)),
          backgroundColor: whiteColor,
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      Container(
          height: mqHeight75,
          width: mq.width,
          decoration: BoxDecoration(color: primaryColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: Center(child: CommonText(text: "UPDATE PROFILE", fontSize: fo20, fontWeight: f400, fontColor: whiteColor),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mqWidth15),
            child: Column(
              children: [
                Center(
                  child: Stack(children: [
                    CircleAvatar(
                      radius: mqHeight55,
                      backgroundImage: const AssetImage(appleLogoImage),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: SvgPicture.asset(editImageLogoImage),
                    ),
                  ]),
                ),
                const ProfileScreenBottomData(),
              ],
            ),
          ),
        ));
  }
}
