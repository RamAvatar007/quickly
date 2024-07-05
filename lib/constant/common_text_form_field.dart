import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';
import 'font_style.dart';

class CommonTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final dynamic controller;
  final String? validatorText;
  const CommonTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.controller,
    this.validatorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primaryColor,
      obscureText: obscureText ?? false,

      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(8)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(8)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(8)),
        border: InputBorder.none,
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        hintStyle: GoogleFonts.leagueSpartan(
            color: brown9fColor, fontSize: fo12, fontWeight: f400),
      ),
    );
  }
}
