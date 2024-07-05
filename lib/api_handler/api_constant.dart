import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'network_constant.dart';

class ApiMethod {
  Future fetchSignUpData(
      String name, String email, String mobile_number, String password) async {
    final String url = NetworkConstant.signUpApi;
    print("User Name : $name");
    print("User email : $email");
    print("User password : $password");
    print("User mobile_number : $mobile_number");
    log("Sign Up url : $url");
    try {
      final response = await http.post(Uri.parse(url), body: {
        "name": name,
        "email": email,
        "country_code": "91",
        "mobile_number": mobile_number,
        "password": password,
        "type": "Customer"
      }, headers: {});
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        log("Response StatusCode : $url");
        log("Response Data : ${response.body}");
        return data;
      } else {
        throw Exception("fetching Error");
      }
    } catch (e) {
      print(e);
    }
  }
}
