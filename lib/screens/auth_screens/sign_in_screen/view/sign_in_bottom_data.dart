import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../constant/app_color.dart';
import '../../../../constant/app_image.dart';
import '../../../../constant/common_rich_text_league_spartan.dart';
import '../../../../constant/common_text.dart';
import '../../../../constant/font_style.dart';
import '../../../../main.dart';
import '../../sign_up_screen/sign_up_screen.dart';

class SignInBottomData extends StatelessWidget {
  const SignInBottomData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: mq.height * .05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: mq.width * .15,
              height: 1,
              color: brown9fColor,
            ),
            CommonText(
                text: "Or sign In with",
                fontSize: fo12,
                fontWeight: f400,
                fontColor: brown9fColor),
            Container(
              width: mq.width * .15,
              height: 1,
              color: brown9fColor,
            ),
          ],
        ),
        SizedBox(
          height: mq.height * .05,
        ),
        Container(
          height: mq.height * .2,
          margin: EdgeInsets.symmetric(horizontal: mq.width * .17),
          padding: EdgeInsets.symmetric(horizontal: mq.width * .025),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: whiteColor),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 66,
                  width: 66,
                  color: Colors.brown,
                ),
                SizedBox(
                  height: mq.height * .01,
                ),
                CommonRichTextLeagueSpartan(
                  text1: "Sign In with ",
                  text2: "Face ID",
                  fontSize: fo15,
                  color1: blackColor,
                  color2: primaryColor,
                  fontWeight: f500,
                  onTap: TapGestureRecognizer()..onTap = () {},
                ),
                SizedBox(
                  height: mq.height * .01,
                ),
                CommonText(
                    text:
                    'Look directly at your front camera to use Face ID',
                    fontSize: fo12,
                    fontWeight: f400,
                    fontColor: brown9fColor),
              ],
            ),
          ),
        ),
        SizedBox(
          height: mq.height * .05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 51,
              height: 51,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(color: primaryColor, width: 1)),
              child: Center(
                child: SizedBox(
                    width: 22,
                    height: 22,
                    child: Image.asset(
                      googleLogoImage,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            SizedBox(
              width: mq.width * .03,
            ),
            Container(
              width: 51,
              height: 51,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(color: primaryColor, width: 1)),
              child: Center(
                child: SizedBox(
                    width: 22,
                    height: 22,
                    child: Image.asset(
                      appleLogoImage,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: mq.height * .02,
        ),
        CommonRichTextLeagueSpartan(
          text1: "Don't Have An Account?",
          text2: "  Sign Up",
          fontSize: fo12,
          fontWeight: f400,
          color1: black57Color,
          color2: primaryColor,
          onTap: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ));
            },
        ),
        SizedBox(
          height: mq.height * .02,
        ),
        InkWell(
            child: CommonText(
                text: "Continue as Guest",
                fontSize: fo12,
                fontWeight: f400,
                fontColor: brown9fColor))
      ],
    );
  }
}
