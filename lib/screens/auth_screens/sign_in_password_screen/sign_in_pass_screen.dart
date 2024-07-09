import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/common_text_form_field.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_password_screen/sign_in_pass_provider/login_provider.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view/signin_screen.dart';

class SignInPasswordScreen extends StatefulWidget {
  final String email;
  const SignInPasswordScreen({super.key, required this.email});

  @override
  State<SignInPasswordScreen> createState() => _SignInPasswordScreenState();
}

class _SignInPasswordScreenState extends State<SignInPasswordScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Consumer<LoginWithPasswordProvider>(
      builder: (BuildContext context, LoginWithPasswordProvider value,
          Widget? child) {
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
                      text: "Sign In",
                      fontSize: fo20,
                      fontWeight: fBoldFont,
                      fontColor: blackColor),
                  SizedBox(
                    height: mq.height * .01,
                  ),
                  CommonText(
                      text: "You are on the last step",
                      fontSize: fo15,
                      fontWeight: f500,
                      fontColor: black27Color),
                  SizedBox(
                    height: mq.height * .03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                          text: widget.email,
                          fontSize: fo15,
                          fontWeight: fBoldFont,
                          fontColor: blackColor),
                      InkWell(
                        child: Icon(
                          Icons.edit_outlined,
                          color: whiteColor,
                          size: 17,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: mq.height * .07,
                  ),
                  CommonTextFormField(
                    controller: value.password,
                    obscureText: isVisible,
                    hintText: "*****************",
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(
                          isVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: brown9fColor,
                        )),
                  ),
                  SizedBox(
                    height: mq.height * .03,
                  ),
                  GestureDetector(
                    onTap: () {
                     if(widget.email.contains("@")){
                       value.loginWithPasswordEmailPostApiData(context);
                     }else{
                       value.loginWithPasswordPhonePostApiData(context);
                     }
                    },
                    child: const CommonButton(
                      text: 'SIGN IN',
                    ),
                  ),
                  SizedBox(
                    height: mq.height * .025,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CommonText(
                        text: "Forgot Password?",
                        fontSize: fo12,
                        fontWeight: f400,
                        fontColor: black57Color),
                  ),
                  SizedBox(
                    height: mq.height * .05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: mq.width * .23,
                        height: 1,
                        color: brown9fColor,
                      ),
                      CommonText(
                          text: "Or",
                          fontSize: fo12,
                          fontWeight: f400,
                          fontColor: brown9fColor),
                      Container(
                        width: mq.width * .23,
                        height: 1,
                        color: brown9fColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mq.height * .05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ));
                    },
                    child: Container(
                      width: mq.width * .6,
                      height: mq.height * .05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(color: primaryColor)),
                      child: Center(
                        child: CommonText(
                            text: "AUTHENTICATE WITH OTP",
                            fontSize: fo15,
                            fontWeight: f400,
                            fontColor: primaryColor),
                      ),
                    ),
                  ),
                  Flexible(child: Container()),
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
      },
    );
  }
}
