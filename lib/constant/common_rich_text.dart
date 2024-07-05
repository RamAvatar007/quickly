import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonRichText extends StatelessWidget {
  final String text1;
  final String text2;
  final double fontSize1;
  final double fontSize2;
  final Color color1;
  final Color color2;
  final FontWeight? fontWeight1;
  final FontWeight? fontWeight2;

  const CommonRichText({super.key, required this.text1, required this.text2, required this.fontSize1, required this.fontSize2, required this.color1, required this.color2, this.fontWeight1, this.fontWeight2});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(text: text1,style: GoogleFonts.playfairDisplay(fontSize: fontSize1,fontWeight: fontWeight1,color: color1,),
        children:[
          TextSpan(text: text2,style: GoogleFonts.playfairDisplay(
              fontSize: fontSize2,fontWeight: fontWeight1,color: color2
          ),recognizer: TapGestureRecognizer()..onTap =(){

          })
        ] ));
  }
}
