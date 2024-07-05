import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/common_text_form_field.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view/sign_in_bottom_data.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
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
                  height: mq.height * .008,
                ),
                CommonText(
                    text: "Hi, Welcome back to Quickly app",
                    fontSize: fo15,
                    fontWeight: fBoldFont,
                    fontColor: black27Color),
                SizedBox(
                  height: mq.height * .008,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonText(
                          text: "Email/Phone",
                          textAlign: TextAlign.left,
                          fontSize: fo15,
                          fontWeight: fBoldFont,
                          fontColor: blackColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: mq.height * .008,
                ),
                Form(
                  key: _formKey,
                  child: CommonTextFormField(
                      controller: emailController,
                      validatorText: "Please Enter Email/Phone",
                      hintText: "example@domain.com"),
                ),
                SizedBox(
                  height: mq.height * .03,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content:  Text('Processing Data')),
                      );
                    }
                  /*  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpScreen(),
                        ));*/
                  },
                  child: const CommonButton(
                    text: 'CONTINUE',
                  ),
                ),
                const SignInBottomData()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
