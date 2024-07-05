import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/api_handler/api_constant.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view/signin_screen.dart';

import '../../../constant/common_rich_text_league_spartan.dart';
import '../../../constant/common_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  ApiMethod apiMethod = ApiMethod();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                    controller: nameController,
                    hintText: "Ex. Eman Fathima",
                    validatorText: "Please Enter Name",
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
                    controller: emailController,
                    hintText: "example@domain.com",
                    validatorText: "Please Enter Email/name",
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
                    controller: phoneController,
                    hintText: "8955773345",
                    validatorText: "Please Enter Phone Number",
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
                    controller: passwordController,
                    obscureText: true,
                    hintText: "************",
                    validatorText: "Please Enter Conform Password",
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
                          apiMethod
                              .fetchSignUpData(
                                  nameController.text.toString(),
                                  emailController.text.toString(),
                                  phoneController.text.toString(),
                                  passwordController.text.toString())
                              ;
                        }
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
      ),
    );
  }
}
