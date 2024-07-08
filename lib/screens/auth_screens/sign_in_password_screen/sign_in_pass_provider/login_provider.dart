import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quickly_design_one/helper/storage_helper.dart';
import 'package:quickly_design_one/network_manager/rest_client.dart';
import 'package:quickly_design_one/screens/screen/home_screen.dart';

class LoginWithPasswordProvider with ChangeNotifier {
  TextEditingController password = TextEditingController();
  bool isLoading = false;
  loginWithPasswordPostApiData(BuildContext context) {
    isLoading = true;
    notifyListeners();
    Map params = {
      "country_code": "91",
      "mobile_number": StorageHelper().getUserPhone(),
      "password": password.text.toString(),
      "type": "Customer"
    };
    RestClient.fetchLoginWithPasswordPostApi(params).then((value) {
      isLoading = false;
      notifyListeners();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      StorageHelper().setUserBearerToken(value['data']['token']);
    }).onError((error, stackTrace) {
      log("Error : $error");

      isLoading = false;
      notifyListeners();
    });
  }
}
