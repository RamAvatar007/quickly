import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_rich_text_league_spartan.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/common_text_form_field.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/constant/mq_constant.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_up_screen/sign_up_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: CommonBgContainer(
            child: Padding(
              padding: EdgeInsets.only(
                  left: mq.width * .04,
                  right: mq.width * .04,
                  top: mq.height * .07),
              child: Column(
                children: [
                  SizedBox(
                      width: 55,
                      height: 55,
                      child: Image.asset(
                        logoWhiteImage,
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: mq.height * .03,
                  ),
                  CommonText1(
                      text: "Reset Password",
                      fontSize: fo20,
                      fontWeight: fBoldFont,
                      fontColor: blackColor),
                  SizedBox(
                    height: mq.height * .01,
                  ),
                  CommonText(
                      text: "Enter your registered Email or Phone to set new password",
                      fontSize: fo12,
                      fontWeight: f500,
                      fontColor: black27Color),
                  SizedBox(
                    height: mqHeight15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonText(
                        text: "Email/Phone",
                        textAlign: TextAlign.left,
                        fontSize: fo15,
                        fontWeight: fBoldFont,
                        fontColor: blackColor),
                  ),
                  SizedBox(
                    height: mqHeight10,
                  ),
                  CommonTextFormField(
                    hintText: "example@domain.com",
                  ),
                  SizedBox(
                    height: mqHeight25,
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: const CommonButton(
                      text: 'CONTINUE',
                    ),
                  ),
                  SizedBox(
                    height: mq.height * .025,
                  ),
                  SizedBox(
                    width: mq.width * .8,
                    child: CommonText(
                        text: "You will receive an OTP to the registered Email or Phone to verify and reset password",
                        fontSize: fo12,
                        fontWeight: f400,
                        fontColor: black27Color),
                  ),
                  Flexible(child: Container()),
                  CommonRichTextLeagueSpartan(
                    text1: "Don't Have An Account?",
                    text2: "  Sign Up",
                    fontSize: fo12,
                    fontWeight: f400,
                    color1: black57Color,
                    color2: primaryColor,
                    onTap: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ));
                      },
                  ),
                  SizedBox(
                    height: mqHeight15,
                  ),
                  InkWell(
                    child: CommonText(
                        text: "Continue as Guest",
                        fontSize: fo12,
                        fontWeight: f400,
                        fontColor: brown9fColor),
                  ),
                  SizedBox(
                    height: mq.height * .085,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
