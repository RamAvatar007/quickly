import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final dynamic textAlign;
  const CommonText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.fontColor,  this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.leagueSpartan(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor,
          decoration: TextDecoration.none),
    );
  }
}

class CommonText1 extends StatelessWidget {
  final String text;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  const CommonText1(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.playfairDisplay(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor,
          decoration: TextDecoration.none),
    );
  }
}
