import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/helper/storage_helper.dart';
import 'package:quickly_design_one/network_manager/rest_client.dart';
import 'package:quickly_design_one/screens/auth_screens/otp_screen/otp_screen.dart';
import 'package:quickly_design_one/utils/toast_message.dart';

class MailSendOtpProvider with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  bool isLoading = false;

  mailSendOtpPostApiData(BuildContext context) {
    isLoading = true;
    notifyListeners();
    if (emailController.text.contains('@')) {
      Map params = {
        "email": emailController.text,
        "login_type": "email",
        "country_code": "91",
        "type": "Customer"
      };

      RestClient.fetchSendOtpPostApi(params).then((value) {
        StorageHelper().setUserEmail(emailController.text.toString());
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OtpScreen(
                      email: emailController.text.toString(),
                    )));
        toastMessage(value['message']);
      }).onError((error, stackTrace) {
        if (kDebugMode) {
          print("Error : $error");
        }
        isLoading = false;
        notifyListeners();
      });
    } else {
      Map params = {
        "mobile_number": emailController.text,
        "login_type": "mobile_number",
        "country_code": "91",
        "type": "Customer"
      };
      RestClient.fetchSendOtpPostApi(params).then((value) {
        StorageHelper().setUserPhone(emailController.text.toString());
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OtpScreen(
                      email: emailController.text.toString(),
                    )));
        toastMessage(value['message']);
      }).onError((error, stackTrace) {
        if (kDebugMode) {
          print("Error : $error");
        }
        isLoading = false;
        notifyListeners();
      });
    }
  }
}
