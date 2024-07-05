import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/common_text_form_field.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view/signin_screen.dart';

class SignInPasswordScreen extends StatefulWidget {
  const SignInPasswordScreen({super.key});

  @override
  State<SignInPasswordScreen> createState() => _SignInPasswordScreenState();
}

class _SignInPasswordScreenState extends State<SignInPasswordScreen> {
  bool isVisible = true;
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
                        text: "+968 7216 2709   ",
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
                 Form(
                   key: _formKey,
                   child: CommonTextFormField(
                     obscureText: isVisible,
                    validatorText: "Please Enter Password",
                    hintText: "*****************",
                    suffixIcon: InkWell(
                        onTap: (){
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon( isVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined,color: brown9fColor,)),
                                   ),
                 ),
                SizedBox(
                  height: mq.height * .03,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignInScreen(),));
                  },
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
      ),
    );
  }
}
