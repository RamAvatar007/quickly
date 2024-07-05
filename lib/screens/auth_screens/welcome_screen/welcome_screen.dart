import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_rich_text.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/onboarding_screen/onbording_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String? language = "English";
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: CommonBgContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mq.width * .05,
          ),
          child: Column(
            children: [
              SizedBox(height: mq.height * .25),
              Image.asset(logoImage),
              const Expanded(child: SizedBox()),
              Card(
                shadowColor: shadowColor,
                child: Container(
                 // height: mq.height * .38,
                  width: mq.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mq.width * .06, vertical: mq.height * .02),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CommonRichText(text1: "Welcome", text2: " To\n     Quickly", fontSize1: fo25, fontSize2: fo25, color1: primaryColor, color2: blackColor,fontWeight1: fBoldFont,fontWeight2: fBoldFont,)

                          /*RichText(
                            text: TextSpan(
                                text: "Welcome To\n Quickly",
                                style: GoogleFonts.playfairDisplay(
                                  color: primaryColor,
                                  fontSize: fo25,
                                  letterSpacing: .5,
                                  fontWeight: fBoldFont,
                                )),
                          )*/,
                        ),
                        SizedBox(height: mq.height * .02),
                        CommonText(
                            text:
                                "Select your preferred language to continue, you can change it later from settings",
                            fontSize: fo15,
                            fontWeight: f400,
                            fontColor: blackColor),
                        SizedBox(height: mq.height * .02),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: mq.width * .025),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 5,
                                width: mq.width * .1,
                              ),
                              CommonText(
                                  text: "عربي",
                                  fontSize: fo15,
                                  fontWeight: f400,
                                  fontColor: blackColor),
                              Radio(
                                  value: "عربي",
                                  activeColor: primaryColor,
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    return primaryColor;
                                  }),
                                  groupValue: language,
                                  onChanged: (value) {
                                    setState(() {
                                      language = value.toString();
                                    });
                                  })
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: mq.width * .6,
                          color: shadowColor,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: mq.width * .025),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 5,
                                  width: mq.width * .1,
                                ),
                                CommonText(
                                    text: "English",
                                    fontSize: fo15,
                                    fontWeight: f400,
                                    fontColor: blackColor),
                                Radio(
                                    value: "English",
                                    fillColor:
                                        MaterialStateProperty.resolveWith<
                                            Color>((Set<MaterialState> states) {
                                      return primaryColor;
                                    }),
                                    groupValue: language,
                                    onChanged: (value) {
                                      language = value.toString();
                                      setState(() {});
                                    }),
                              ],
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const OnBoardingScreen(),
                                ));
                          },
                          child: const CommonButton(text: 'CONTINUE'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mq.height * .03,
              )
            ],
          ),
        ),
      ),
    );
  }
}
