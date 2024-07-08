import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickly_design_one/helper/storage_helper.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_in_screen/view_model/sign_in_provider.dart';
import 'package:quickly_design_one/screens/auth_screens/sign_up_screen/sign_up_provider/sign_up_provider.dart';
import 'package:quickly_design_one/screens/auth_screens/splash_screen/splash_screen.dart';

import 'screens/auth_screens/otp_screen/otp_provider/otp_provider.dart';
import 'screens/auth_screens/sign_in_password_screen/sign_in_pass_provider/login_provider.dart';

late Size mq;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await StorageHelper().init();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => MailSendOtpProvider()),
        ChangeNotifierProvider(create: (_) => OtpProvider()),
        ChangeNotifierProvider(create: (_) => LoginWithPasswordProvider()),
      ],child: const MyApp()));
}

GlobalKey<NavigatorState> navKey = GlobalKey() ;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: navKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
