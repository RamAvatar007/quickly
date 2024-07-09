import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';

class OrderBottomData extends StatefulWidget {
  const OrderBottomData({super.key});

  @override
  State<OrderBottomData> createState() => _OrderBottomDataState();
}

class _OrderBottomDataState extends State<OrderBottomData> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Container(
          width: mq.width,
          margin: EdgeInsets.symmetric(vertical: mq.width * .012),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: whiteColor, boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(.1),
              blurRadius: 6,
              offset: const Offset(3, 3), // changes position of shadow
            ),
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: mq.width * .2,
                    height: mq.height * .1,
                    child: Image.asset(
                      logoImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  CommonText(
                    text: "Rate Product",
                    fontSize: fo12,
                    fontWeight: f400,
                    fontColor: primaryColor,
                    decoration: TextDecoration.underline,
                  )
                ],
              ),
              SizedBox(
                width: mq.width * .02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: mq.width - (mq.width * .2 + 16 + 3 * (mq.width * .04)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText1(text: "Head Lamp", fontSize: fo15, fontWeight: fBoldFont, fontColor: blackColor),
                            const SizedBox(
                              height: 2,
                            ),
                            CommonText(text: "Toyota, Land Cruiser", fontSize: fo12, fontWeight: f400, fontColor: black57Color),
                          ],
                        ),
                        Flexible(child: Container()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CommonText(text: "OMR 1,512", fontSize: fo15, fontWeight: f500, fontColor: primaryColor),
                            const SizedBox(
                              height: 2,
                            ),
                            CommonText(text: "Quantity : 1", fontSize: fo12, fontWeight: f500, fontColor: blackColor),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mq.width * .025,
                  ),
                  CommonText(text: "Ordered On : 15-11-2023", fontSize: fo12, fontWeight: f400, fontColor: black57Color),
                  SizedBox(
                    height: mq.height * .0006,
                  ),
                  CommonText(text: "Delivered On : 22-11-2023", fontSize: fo12, fontWeight: f400, fontColor: primaryColor),
                  SizedBox(
                    height: mq.width * .02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: mq.height * .035,
                        width: mq.width * .2,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: whiteColor, boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(.1),
                            blurRadius: 8,
                            offset: const Offset(3, 3), // changes position of shadow
                          ),
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.rotate_right,
                              size: 18,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: mq.width * .014,
                            ),
                            CommonText(text: "Delivered", fontSize: fo12, fontWeight: f400, fontColor: blackColor)
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: mq.height * .035,
                        width: mq.width * .18,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: whiteColor, boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(.1),
                            blurRadius: 8,
                            offset: const Offset(3, 3), // changes position of shadow
                          ),
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.event_note,
                              size: 18,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: mq.width * .014,
                            ),
                            CommonText(text: "Invoice", fontSize: fo12, fontWeight: f400, fontColor: blackColor)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: mq.width * .02,
              ),
            ],
          ),
        );
      },
    );
  }
}
