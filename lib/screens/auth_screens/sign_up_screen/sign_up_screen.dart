import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_rich_text_league_spartan.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/common_text_form_field.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view/signin_screen.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_up_screen/sign_up_provider/sign_up_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Consumer<SignUpProvider>(builder: (context, value, child) {
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
                    height: mq.height * .015,
                  ),
                  CommonText1(
                      text: "Create Account",
                      fontSize: fo20,
                      fontWeight: fBoldFont,
                      fontColor: blackColor),
                  SizedBox(
                    height: mq.height * .008,
                  ),
                  CommonText(
                      text: "Hi, Welcome to Quickly app",
                      fontSize: fo15,
                      fontWeight: fBoldFont,
                      fontColor: brown57Color),
                  SizedBox(
                    height: mq.height * .008,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonText(
                        text: "Name",
                        textAlign: TextAlign.left,
                        fontSize: fo15,
                        fontWeight: fBoldFont,
                        fontColor: blackColor),
                  ),
                  SizedBox(
                    height: mq.height * .008,
                  ),
                  CommonTextFormField(
                    controller: value.nameController,
                    hintText: "Ex. Eman Fathima",
                  ),
                  SizedBox(
                    height: mq.height * .025,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonText(
                        text: "Email",
                        textAlign: TextAlign.left,
                        fontSize: fo15,
                        fontWeight: fBoldFont,
                        fontColor: blackColor),
                  ),
                  SizedBox(
                    height: mq.height * .008,
                  ),
                  CommonTextFormField(
                    controller: value.emailController,
                    hintText: "example@domain.com",
                  ),
                  SizedBox(
                    height: mq.height * .025,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonText(
                        text: "Phone",
                        textAlign: TextAlign.left,
                        fontSize: fo15,
                        fontWeight: fBoldFont,
                        fontColor: blackColor),
                  ),
                  SizedBox(
                    height: mq.height * .008,
                  ),
                  CommonTextFormField(
                    controller: value.phoneController,
                    hintText: "8955773345",
                  ),
                  SizedBox(
                    height: mq.height * .025,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonText(
                        text: "Password",
                        textAlign: TextAlign.left,
                        fontSize: fo15,
                        fontWeight: fBoldFont,
                        fontColor: blackColor),
                  ),
                  SizedBox(
                    height: mq.height * .008,
                  ),
                  CommonTextFormField(
                    controller: value.passwordController,
                    obscureText: true,
                    hintText: "************",
                  ),
                  Row(
                    children: [
                      Transform.translate(
                        offset: const Offset(-10, 0),
                        child: Checkbox(
                            side: WidgetStateBorderSide.resolveWith(
                              (states) =>
                                  BorderSide(width: 1.0, color: primaryColor),
                            ),
                            activeColor: primaryColor,
                            checkColor: whiteColor,
                            value: value.checkBox1,
                            onChanged: (val) {
                              value.updateCheckBox1(val!);
                            }),
                      ),
                      Transform.translate(
                        offset: const Offset(-10, 0),
                        child: CommonRichTextLeagueSpartan(
                          text1: "Agree with",
                          text2: " Terms & Condition",
                          fontSize: fo12,
                          fontWeight: f400,
                          color1: blackColor,
                          color2: primaryColor,
                          decoration: TextDecoration.underline,
                          onTap: TapGestureRecognizer()..onTap = () {},
                        ),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -17),
                    child: Row(
                      children: [
                        Transform.translate(
                          offset: const Offset(-10, 0),
                          child: Checkbox(
                              value: value.checkBox2,
                              side: WidgetStateBorderSide.resolveWith(
                                (states) =>
                                    BorderSide(width: 1.0, color: primaryColor),
                              ),
                              activeColor: primaryColor,
                              onChanged: (newValue) {
                               value.updateCheckBox1(newValue!);
                              }),
                        ),
                        Transform.translate(
                          offset: const Offset(-16, 0),
                          child: CommonText(
                              text: "  subscribe to our newsletter",
                              fontSize: fo12,
                              fontWeight: f400,
                              fontColor: blackColor),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -15),
                    child: GestureDetector(
                      onTap: () {
                        value.signUpPostApiData(context);
                      },
                      child: const CommonButton(
                        text: 'SIGN UP',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mq.height * .005,
                  ),
                  CommonRichTextLeagueSpartan(
                    text1: "Already Have An Account?",
                    text2: " Sign In",
                    fontSize: fo12,
                    color1: black57Color,
                    color2: primaryColor,
                    decoration: TextDecoration.underline,
                    onTap: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ));
                      },
                  ),
                  Flexible(child: Container()),
                  InkWell(
                      child: CommonText(
                          text: "Continue as Guest",
                          fontSize: fo12,
                          fontWeight: f400,
                          fontColor: brown9fColor)),
                  SizedBox(
                    height: mq.height * .03,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
