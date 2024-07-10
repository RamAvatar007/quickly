import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/constant/mq_constant.dart';

class AllCategoryScreenBottomData extends StatefulWidget {
  const AllCategoryScreenBottomData({super.key});

  @override
  State<AllCategoryScreenBottomData> createState() => _AllCategoryScreenBottomDataState();
}

class _AllCategoryScreenBottomDataState extends State<AllCategoryScreenBottomData> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: mqWidth15,
      crossAxisSpacing: mqWidth15),
      itemCount: 24,
      itemBuilder: (context, index) {
        return Container(

          decoration: BoxDecoration(
            color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: black27Color.withOpacity(.2),
                  blurRadius: 6,
                  offset:
                  const Offset(3, 3), // changes position of shadow
                ),
              ]),
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: mqHeight45,
                  width: mqWidth45,
                  child: Image.asset(appleLogoImage,fit: BoxFit.fill,)),
              SizedBox(height: mqHeight10,),
              Flexible(child: CommonText(text: "Apple Logo", fontSize: fo12, fontWeight: fBoldFont, fontColor: blackColor)),

            ],
          ),),
        );
      },
    );
  }
}
