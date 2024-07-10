import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/Common_text_field.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/constant/mq_constant.dart';

class ProfileScreenBottomData extends StatelessWidget {
  const ProfileScreenBottomData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: mqHeight10,
        ),
        CommonText(text: "Name", fontSize: fo15, fontWeight: f400, fontColor: blackColor),
        SizedBox(
          height: mqHeight5,
        ),
        const CommonTextFormField1(
          hintText: "     Eman Fathima",
        ),
        SizedBox(height: mqHeight15),
        CommonText(text: "Phone Number", fontSize: fo15, fontWeight: f400, fontColor: blackColor),
        SizedBox(
          height: mqHeight5,
        ),
        const CommonTextFormField1(
          hintText: "     +91 9587963021",
          suffixText: "Change",
        ),
        SizedBox(height: mqHeight15),
        CommonText(text: "Email", fontSize: fo15, fontWeight: f400, fontColor: blackColor),
        SizedBox(
          height: mqHeight5,
        ),
        const CommonTextFormField1(
          hintText: "     example@gmail.com",
          suffixText: "Change",
        ),
        SizedBox(height: mqHeight15),
        CommonText(text: "Current Password", fontSize: fo15, fontWeight: f400, fontColor: blackColor),
        SizedBox(
          height: mqHeight5,
        ),
        const CommonTextFormField1(
          hintText: "     *************",
          obscureText: true,
        ),
        SizedBox(height: mqHeight15),
        Align(
            alignment: Alignment.topRight,
            child: CommonText(
              text: "Forgot Passowrd?",
              fontSize: fo12,
              fontWeight: f400,
              fontColor: primaryColor,
              decoration: TextDecoration.underline,
            )),
        SizedBox(height: mqHeight10),
        CommonText(text: "New Password", fontSize: fo15, fontWeight: f400, fontColor: blackColor),
        SizedBox(
          height: mqHeight5,
        ),
        const CommonTextFormField1(
          hintText: "     ghsdyv@bsh",
          suffixText: "Change",
        ),
        SizedBox(height: mqHeight15),
        CommonText(text: "Current Password", fontSize: fo15, fontWeight: f400, fontColor: blackColor),
        SizedBox(
          height: mqHeight5,
        ),
        const CommonTextFormField1(
          hintText: "     *************",
          obscureText: true,
        ),
      ],
    );
  }
}
