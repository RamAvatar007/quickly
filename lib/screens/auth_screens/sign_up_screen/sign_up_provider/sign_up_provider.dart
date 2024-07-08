import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quickly_design_one/helper/storage_helper.dart';
import '../../../../network_manager/rest_client.dart';
import '../../sign_in_screen/view/signin_screen.dart';

class SignUpProvider with ChangeNotifier {
  bool isLoading = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool checkBox1 = false;
  bool checkBox2 = false;

  void updateCheckBox1(bool status) {
    checkBox1 = status;
    notifyListeners();
  }

  void updateCheckBox2(bool status) {
    checkBox2 = status;
    notifyListeners();
  }

  signUpPostApiData(BuildContext context) {
    isLoading = true;
    notifyListeners();

    Map params = {
      "name": nameController.text,
      "email": emailController.text,
      "country_code": "91",
      "mobile_number": phoneController.text,
      "password": passwordController.text,
      "type": "Customer"
    };

    RestClient.fetchSignUpPostApi(params).then((value) {
      if (kDebugMode) {
        print(value);
      }
      StorageHelper().setUserEmail(emailController.text);
      StorageHelper().setUserPhone(phoneController.text);
     // StorageHelper().setUserBearerToken(value['data']['token']);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
      isLoading = false;
      notifyListeners();
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print("Error : $error");
      }
      isLoading = false;
      notifyListeners();
    });
  }
}
