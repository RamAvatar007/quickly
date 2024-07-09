import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';

class CartBottomData extends StatefulWidget {
  const CartBottomData({super.key});

  @override
  State<CartBottomData> createState() => _CartBottomDataState();
}

class _CartBottomDataState extends State<CartBottomData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mq.width * .02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: mq.width * .2,
            height: mq.height * .1,
            child: Image.asset(
              logoImage,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: mq.width * .02,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText1(
                  text: "Head Lamp",
                  fontSize: fo15,
                  fontWeight: fBoldFont,
                  fontColor: blackColor),
              const SizedBox(
                height: 2,
              ),
              CommonText(
                  text: "Toyota, Land Cruiser",
                  fontSize: fo12,
                  fontWeight: f400,
                  fontColor: black57Color),
              SizedBox(
                height: mq.width * .01,
              ),
              CommonText(
                  text: "Quantity : 1",
                  fontSize: fo12,
                  fontWeight: f500,
                  fontColor: blackColor),
              SizedBox(
                height: mq.height * .007,
              ),
              Container(
                height: mq.height * .035,
                width: mq.width * .3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor.withOpacity(.1),
                        blurRadius: 8,
                        offset:
                            const Offset(3, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bookmark_border_outlined,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: mq.width * .014,
                    ),
                    CommonText(
                        text: "Save for later",
                        fontSize: fo12,
                        fontWeight: f400,
                        fontColor: blackColor)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: mq.width * .02,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: secondaryColor.withOpacity(.5),
                        ),
                        child: Center(
                          child: CommonText(
                              text: "-",
                              fontSize: fo20,
                              fontWeight: f600,
                              fontColor: black27Color),
                        ),
                      ),
                    ),
                    CommonText(
                        text: "1",
                        fontSize: fo12,
                        fontWeight: f500,
                        fontColor: primaryColor),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: secondaryColor,
                        ),
                        child: Center(
                          child: CommonText(
                              text: "+",
                              fontSize: fo20,
                              fontWeight: f600,
                              fontColor: blackColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mq.height * .005,
              ),
              CommonText(
                  text: "OMR 1,512",
                  fontSize: fo15,
                  fontWeight: f500,
                  fontColor: primaryColor),
              SizedBox(
                height: mq.height * .011,
              ),
              Container(
                height: mq.height * .035,
                width: mq.width * .3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor.withOpacity(.1),
                        blurRadius: 8,
                        offset:
                            const Offset(3, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete_outline_outlined,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: mq.width * .006,
                    ),
                    CommonText(
                        text: "Remove from cart",
                        fontSize: fo12,
                        fontWeight: f400,
                        fontColor: blackColor)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
