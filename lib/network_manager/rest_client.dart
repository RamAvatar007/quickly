import 'http_helper.dart';
import 'network_constant.dart';

class RestClient {
  static final HttpHelper _httpHelper = HttpHelper();

  static Future<dynamic> fetchSignUpPostApi(Object params) async {
    var response = await _httpHelper.post(url: NetworkConstant.signUpUrl, requestBody: params);
    return response;
  }

  static Future<dynamic> fetchSendOtpPostApi(Object params) async {
    var response = await _httpHelper.post(url: NetworkConstant.sendOtpMailUrl, requestBody: params);
    return response;
  }

  static Future<dynamic> fetchVerifyOtpPostApi(Object params) async {
    Map<String,dynamic> response = await _httpHelper.post(url: NetworkConstant.verifyOtpUrl, requestBody: params);
    return response;
  }

  static Future<dynamic> fetchLoginWithPasswordPostApi(Object params) async {
    Map<String,dynamic> response = await _httpHelper.post(url: NetworkConstant.loginUrl, requestBody: params);
    return response;
  }

  static Future<dynamic> fetchResendOtpPostApi(Object params) async {
    Map<String,dynamic> response = await _httpHelper.post(url: NetworkConstant.loginUrl, requestBody: params,isRequireAuthorization: true);
    return response;
  }

  // static Future<dynamic> loginPostApi() async {
  //   Map params = {"country_code": "91", "mobile_number": "9874500000", "email": "mayanklal@yopmail.com", "otp": "3739", "password": "Testlal@123", "type": "Customer"};
  //
  //   Map<String, dynamic> response = await _httpHelper.post(url: "https://quicklyom.com/api/app/auth/login", requestBody: params);
  //   return response;
  // }
  //
  // static Future<dynamic> loginOutPostApi() async {
  //   Map<String, dynamic> response = await _httpHelper.post(url: "https://quicklyom.com/api/app/auth/logout");
  //   return response;
  // }
  //
  // static Future<dynamic> fetchUserLoginPostApi(Object params) async {
  //   Map<String, dynamic> response = await _httpHelper.post(url: "https://fakestoreapi.com/auth/login", requestBody: params);
  //   return response;
  // }
}
