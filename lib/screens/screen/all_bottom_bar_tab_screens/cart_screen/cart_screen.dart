import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/cart_screen/cart_bottom_data.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: CommonText1(
            text: "Cart",
            fontSize: fo20,
            fontWeight: f600,
            fontColor: blackColor),
        centerTitle: true,
        actions: [
          const Icon(Icons.edit_outlined),
          SizedBox(
            width: mq.width * .04,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: mq.height * .09,
       width: mq.width,
       margin: EdgeInsets.symmetric(horizontal: mq.width *.04),
        padding: EdgeInsets.symmetric(horizontal: mq.width *.025),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: primaryColor
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommonText(text: "Total Price For 4 Item(s)", fontSize: fo15, fontWeight: f600, fontColor: blackColor),
                SizedBox(
                  height: mq.height *.0012,
                ),
                CommonText(text: "OMR 99,241‬", fontSize: fo20, fontWeight: fBoldFont, fontColor: primaryColor),
              ],
            ),
            Flexible(child: Container()),
            InkWell(
              child: Container(
                width: mq.width * .4,
                height:  mq.height * .05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: primaryColor
                ),
                child: Center(child: CommonText(text: "PROCEED TO BUY", fontSize: fo14, fontWeight: f400, fontColor: whiteColor),),
              ),
            ),
          ],
        ),
      ),
      body:
      ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: mq.height * .012,horizontal: mq.width *.04),
            child: Container(
              width: mq.width,
              height: mq.height * .175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(.1),
                      blurRadius: 6,
                      offset: const Offset(3, 3), // changes position of shadow
                    ),
                  ]),
              child:const CartBottomData(),
            ),
          );
        },
      ),
    );
  }
}
