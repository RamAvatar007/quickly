import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view/signin_screen.dart';

import '../../../constant/common_rich_text_league_spartan.dart';
import 'sign_up_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBox1 = false;
  bool checkBox2 = false;

  final _formKey = GlobalKey<FormState>();

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
            child: Form(
              key: _formKey,
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
                  const SignUpTextField(),
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
                            value: checkBox2,
                            onChanged: (value) {
                              setState(() {
                                checkBox2 = value!;
                              });
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
                              value: checkBox1,
                              side: WidgetStateBorderSide.resolveWith(
                                (states) =>
                                    BorderSide(width: 1.0, color: primaryColor),
                              ),
                              activeColor: primaryColor,
                              onChanged: (newValue) {
                                setState(() {
                                  checkBox1 = newValue!;
                                });
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
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ));*/
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
                    height: mq.height * .04,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
