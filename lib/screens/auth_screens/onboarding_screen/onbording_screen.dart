import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_button.dart';
import 'package:quickly_design_one/constant/common_rich_text_league_spartan.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view/signin_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List onBoardingItem = [
    {
      "image": "assets/images/onBoarding 1.png",
      "title": "Rev Up Your Ride With Quickly",
      "subTitle":
          "Lorem Ipsum Is Simply Dummy Text The Printing Typesetting Industry. Lorem Ipsum Is Simple."
    },
    {
      "image": "assets/images/onBoarding 2.png",
      "title": "Better Performance With Precision Parts",
      "subTitle":
          "Lorem Ipsum Is Simply Dummy Text The Printing Typesetting Industry. Lorem Ipsum Is Simple."
    },
    {
      "image": "assets/images/onBoarding 3.png",
      "title": "Your Vehicle's Secret Arsenal Unveiled",
      "subTitle":
          "Lorem Ipsum Is Simply Dummy Text The Printing Typesetting Industry. Lorem Ipsum Is Simple."
    }
  ];

  final PageController pageController = PageController();
  int currentPage = 0;
  onChange(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: CommonBgContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: mq.height * .07,
                child: SizedBox(
                    width: 55,
                    height: 55,
                    child: Image.asset(
                      logoWhiteImage,
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: mq.height * .2),
                child: PageView.builder(
                  onPageChanged: onChange,
                  controller: pageController,
                  itemCount: onBoardingItem.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.width * .1),
                      child: Column(
                        children: [
                          Image.asset(onBoardingItem[index]["image"]),
                          SizedBox(
                            height: mq.height * .06,
                          ),
                          CommonText(
                              text: onBoardingItem[index]["title"],
                              fontSize: fo25,
                              fontWeight: f400,
                              fontColor: blackColor),
                          SizedBox(
                            height: mq.height * .06,
                          ),
                          CommonText(
                              text: onBoardingItem[index]["subTitle"],
                              fontSize: fo15,
                              fontWeight: f400,
                              fontColor: black57Color),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                  bottom: mq.height * .14,
                  child: (currentPage == (onBoardingItem.length) - 1)
                      ? InkWell(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignInScreen(),
                                  ));
                            },
                            child: const CommonButton(
                              text: "'LET'S GET STARTED'",
                            ),
                          ),
                        )
                      : Container()),
              Positioned(
                bottom: mq.height * .11,
                child: (currentPage == (onBoardingItem.length) - 1)
                    ? CommonRichTextLeagueSpartan(
                        text1: "Already Have An Account?",
                        text2: "  Sign In",
                        fontSize: fo12,
                        color1: black57Color,
                        color2: primaryColor,
                        decoration: TextDecoration.underline,
                        onTap: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInScreen(),
                                ));
                          },
                      )
                    : Container(),
              ),
              Positioned(
                  bottom: mq.height * .042,
                  left: 15,
                  child: InkWell(
                      onTap: () {
                        pageController.previousPage(
                            duration: const Duration(microseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: (currentPage == (onBoardingItem.length) - 3)
                          ? Container()
                          : Image.asset(backArrowImage))),
              Positioned(
                  bottom: mq.height * .055,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 11,
                      dotWidth: 11,
                      dotColor: secondaryColor,
                      activeDotColor: primaryColor,
                      type: WormType.thinUnderground,
                    ),
                  )),
              Positioned(
                bottom: mq.height * .042,
                right: 15,
                child: InkWell(
                    onTap: () {
                      (currentPage == (onBoardingItem.length) - 1)
                          ? Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInScreen(),
                              ))
                          : pageController.nextPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn);
                    },
                    child: Image.asset(forWordArrowImage)),
              ),
              Positioned(
                  bottom: mq.height * .02,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ));
                      },
                      child: CommonText(
                        text: 'Skip',
                        fontSize: fo12,
                        fontWeight: f400,
                        fontColor: brown9fColor,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
