import 'package:flutter/material.dart';

import '../../../constant/app_color.dart';
import '../../../constant/common_text.dart';
import '../../../constant/common_text_form_field.dart';
import '../../../constant/font_style.dart';
import '../../../main.dart';

class SignUpTextField extends StatefulWidget {
  const SignUpTextField({super.key});

  @override
  State<SignUpTextField> createState() => _SignUpTextFieldState();
}

class _SignUpTextFieldState extends State<SignUpTextField> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();

  FocusNode nameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode conformPasswordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          controller: nameController, hintText: "Ex. Eman Fathima",
          validatorText: "Please Enter Name",),
        SizedBox(
          height: mq.height * .025,
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
          height: mq.height * .008,
        ),
        CommonTextFormField(
          controller: emailController,
          hintText: "example@domain.com",validatorText: "Please Enter Email/name",),
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
          hintText: "Adf4521SfGhu&01",validatorText: "Please Enter Password",),
        SizedBox(
          height: mq.height * .025,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: CommonText(
              text: "Confirm Password",
              textAlign: TextAlign.left,
              fontSize: fo15,
              fontWeight: fBoldFont,
              fontColor: blackColor),
        ),
        SizedBox(
          height: mq.height * .008,
        ),
        CommonTextFormField(
          controller: conformPasswordController,
          obscureText: true,
          hintText: "******************",validatorText: "Please Enter Conform Password",),
      ],
    );
  }
}
