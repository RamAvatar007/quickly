import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonRichTextLeagueSpartan extends StatelessWidget {
  final String text1;
  final String text2;
  final double fontSize;
  final Color color1;
  final Color color2;
  final FontWeight? fontWeight;
  final dynamic onTap;
  final dynamic decoration;
  const CommonRichTextLeagueSpartan(
      {super.key,
      required this.text1,
      required this.text2,
      required this.fontSize,
      required this.color1,
      required this.color2,
      this.fontWeight,
      this.onTap, this.decoration});
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: text1,
            style: GoogleFonts.leagueSpartan(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color1,
            ),
            children: [
          TextSpan(
              text: text2,
              style: GoogleFonts.leagueSpartan(
                  fontSize: fontSize, fontWeight: fontWeight, color: color2,decoration: decoration),
              recognizer: onTap)
        ]));
  }
}
