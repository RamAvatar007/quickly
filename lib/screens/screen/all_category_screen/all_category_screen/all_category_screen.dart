import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/common_text_form_field.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/constant/mq_constant.dart';
import 'package:quickly_design_one/main.dart';

import 'all_category_screen_bottom_data.dart';

class AllCategoryScreen extends StatefulWidget {
  const AllCategoryScreen({super.key});

  @override
  State<AllCategoryScreen> createState() => _AllCategoryScreenState();
}

class _AllCategoryScreenState extends State<AllCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(

      ////////////-------------------App Bar -------------------////////
      appBar: AppBar(
        title: CommonText1(text: "Category", fontSize: fo20, fontWeight: fBoldFont, fontColor: blackColor),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Transform.translate(
                offset: const Offset(0, 5),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: primaryColor,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: secondaryColor, border: Border.all(color: primaryColor, width: 1)),
                  child: Center(
                    child: CommonText(text: "2", fontSize: 8, fontWeight: f500, fontColor: primaryColor),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: mqWidth15,
          )
        ],
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
        backgroundColor: whiteColor,
      ),
      backgroundColor: whiteColor,

      /////--------------------body--------------------///////
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mqWidth15,),
        child: Column(
          children: [
            SizedBox(height: mqHeight2),
            Row(
              children: [
                Flexible(
                    child: Container(
                      height: mq.height * .05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: black27Color.withOpacity(.2),
                              blurRadius: 6,
                              offset:
                              const Offset(3, 3), // changes position of shadow
                            ),
                          ]),
                      child: CommonTextFormField(
                        hintText: "Search for your product category",
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
                          color: black27Color.withOpacity(.2),
                          blurRadius: 6,
                          offset:
                          const Offset(3, 3), // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * .04),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: primaryColor,
                          size: 21,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mqHeight20,),
            const Expanded(child: AllCategoryScreenBottomData()),
          ],
        ),
      ),
    );
  }
}
