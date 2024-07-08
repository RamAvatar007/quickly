import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/helper/storage_helper.dart';
import 'package:quickly_design_one/network_manager/rest_client.dart';
import 'package:quickly_design_one/screens/screen/home_screen.dart';
import 'package:quickly_design_one/utils/toast_message.dart';

class OtpProvider with ChangeNotifier {
  TextEditingController otpController = TextEditingController();
  bool isLoading = false;

  otpPostApiData(BuildContext context) {
    isLoading = true;
    notifyListeners();
    Map params = {
      "country_code": "91",
      "mobile_number": StorageHelper().getUserPhone(),
      "email": StorageHelper().getUserEmail(),
      "otp": otpController.text,
      "type": "Customer"
    };
    RestClient.fetchVerifyOtpPostApi(params).then((value) {
      StorageHelper().setUserBearerToken(value['data']['token']);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
      isLoading = false;
      notifyListeners();
    }).onError((error, stackTrace) {
      log("Error : $error");
      isLoading = false;
      notifyListeners();
    });
  }

  reSendOtpPostApiData() {
    isLoading = true;
    notifyListeners();
    Map params = {
      "login_type": "mobile_number",
      "country_code": "91",
      "mobile_number": StorageHelper().getUserPhone(),
      "type": "Customer"
    };
    RestClient.fetchResendOtpPostApi(params).then((value) {
      isLoading = false;
      notifyListeners();
      toastMessage(value['message']);
    }).onError((error, stackTrace) {
      log("Error : $error");
      isLoading = false;
      notifyListeners();
    });
  }
}
