import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/common_text_form_field.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/order_screen/order_bottom_data.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: CommonText1(
            text: "Your Order",
            fontSize: fo20,
            fontWeight: fBoldFont,
            fontColor: blackColor),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mq.width * .04),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: Container(
                  height: mq.height * .05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor.withOpacity(.1),
                          blurRadius: 6,
                          offset:
                              const Offset(3, 3), // changes position of shadow
                        ),
                      ]),
                  child: CommonTextFormField(
                    hintText: "Search for your orders",
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: primaryColor,
                    ),
                  ),
                )),
                SizedBox(
                  width: mq.width * .04,
                ),
                Container(
                  height: mq.height * .05,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor.withOpacity(.1),
                          blurRadius: 6,
                          offset:
                              const Offset(3, 3), // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * .04),
                    child: Row(
                      children: [
                        CommonText(
                            text: "Recent orders",
                            fontSize: fo12,
                            fontWeight: f400,
                            fontColor: blackColor),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: primaryColor,
                          size: 21,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mq.width * .02,),
            const Expanded(child: OrderBottomData()),
          ],
        ),
      ),
    );
  }
}
