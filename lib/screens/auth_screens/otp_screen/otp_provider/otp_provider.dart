import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/helper/storage_helper.dart';
import 'package:quickly_design_one/network_manager/rest_client.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/bottom_bar_tabs_screen/bottom_bar_tab_screen.dart';

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
      StorageHelper().setUserPhone(value['data']['user']['mobile_number']);
      StorageHelper().setUserEmail(value['data']['user']['email']);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomBarTabScreen(),
          ));
      isLoading = false;
      notifyListeners();
    }).onError((error, stackTrace) {
      log("Error : $error");
      isLoading = false;
      notifyListeners();
    });
  }
  //// Resend Otp Apply here!!!

  mailResendOtp() {
    isLoading = true;
    notifyListeners();
    Map params = {"email": StorageHelper().getUserEmail().toString(), "login_type": "email", "country_code": "91", "type": "Customer"};
    RestClient.fetchSendOtpPostApi(params).then((value) {
      isLoading = false;
      notifyListeners();
    });
    notifyListeners();
  }

  phoneResendOtp() {
    isLoading = true;
    notifyListeners();
    Map params = {"mobile_number": StorageHelper().getUserPhone().toString(), "login_type": "mobile_number", "country_code": "91", "type": "Customer"};
    RestClient.fetchSendOtpPostApi(params).then((value) {
      isLoading = false;
      notifyListeners();
    });
    notifyListeners();
  }
}
