import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';

class AccountScreenBottomData extends StatefulWidget {
  const AccountScreenBottomData({super.key});

  @override
  State<AccountScreenBottomData> createState() => _AccountScreenBottomDataState();
}

class _AccountScreenBottomDataState extends State<AccountScreenBottomData> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AccountSetting(
          text: "Your Profile",
          icon: Icon(Icons.person_outline_outlined),
        ),
        AccountSetting(
          text: "Notifications",
          icon: Icon(Icons.notifications_active_outlined),
        ),
        AccountSetting(
          text: "Saved",
          icon: Icon(Icons.save_as_outlined),
        ),
        AccountSetting(
          text: "Manage Vehicle",
          icon: Icon(Icons.car_rental_outlined),
        ),

        AccountSetting(
          text: "Manage Address",
          icon: Icon(Icons.location_on_outlined),
        ),
        AccountSetting(
          text: "Points and Rewards",
          icon: Icon(Icons.point_of_sale_outlined),
        ),
        AccountSetting(
          text: "Request Product",
          icon: Icon(Icons.preview_outlined),
        ),
        AccountSetting(
          text: "Support",
          icon: Icon(Icons.support_agent_outlined),
        ),

        AccountSetting(
          text: "Terms and Conditions",
          icon: Icon(Icons.mark_unread_chat_alt_outlined),
        ),
        AccountSetting(
          text: "About Quickly",
          icon: Icon(Icons.align_vertical_bottom_outlined),
        ),
        AccountSetting(
          text: "Settings",
          icon: Icon(Icons.settings_suggest_outlined),
        ),
      ],
    );
  }
}

class AccountSetting extends StatelessWidget {
  final String text;
  final Widget icon;
  const AccountSetting({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: mq.width * .12,top: mq.width * .04),
      child: Column(
        children: [
          Row(
            children: [
              icon,
              SizedBox(
                width: mq.width * .13,
              ),
              CommonText(text: text, fontSize: fo15, fontWeight: f600, fontColor: blackColor),
              Flexible(child: Container()),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: primaryColor,
              ),
            ],
          ),
          SizedBox(
            height:  mq.width * .01,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: brown9fColor,
          )
        ],
      ),
    );
  }
}
