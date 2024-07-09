import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/constant/app_image.dart';
import 'package:quickly_design_one/constant/common_bg_container.dart';
import 'package:quickly_design_one/constant/common_text.dart';
import 'package:quickly_design_one/constant/font_style.dart';
import 'package:quickly_design_one/main.dart';
import 'package:quickly_design_one/screens/auth_screens/welcome_screen/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
   Future.delayed(const Duration(seconds: 3),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const WelcomeScreen(),));
     /* if(StorageHelper().getUserBearerToken() == null){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const WelcomeScreen(),));
     }else{
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const HomeScreen(),));
     }*/

   });
  }
  @override
  Widget build(BuildContext context) {
    
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: CommonBgContainer(child: Column(children: [
        SizedBox(height: mq.height * .38),
        Image.asset(logoImage),
        Flexible(child: Container()),
        CommonText(text: "V 1.0.0.1", fontSize: fo12, fontWeight: f400, fontColor: brown98Color),
        SizedBox(height: mq.height * .09),
      ],)),
    );
  }
}
