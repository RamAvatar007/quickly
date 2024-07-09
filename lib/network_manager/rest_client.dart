import 'http_helper.dart';
import 'network_constant.dart';

class RestClient {
  static final HttpHelper _httpHelper = HttpHelper();

  // Sign up Post Api
  static Future<dynamic> fetchSignUpPostApi(Object params) async {
    var response = await _httpHelper.post(url: NetworkConstant.signUpUrl, requestBody: params);
    return response;
  }

  // Send Otp Post Api
  static Future<dynamic> fetchSendOtpPostApi(Object params) async {
    var response = await _httpHelper.post(url: NetworkConstant.sendOtpMailUrl, requestBody: params);
    return response;
  }

  // Verify Otp Post Api
  static Future<dynamic> fetchVerifyOtpPostApi(Object params) async {
    Map<String, dynamic> response = await _httpHelper.post(url: NetworkConstant.verifyOtpUrl, requestBody: params);
    return response;
  }

  // login with password Post Api
  static Future<dynamic> fetchLoginWithPasswordPostApi(Object params) async {
    Map<String, dynamic> response = await _httpHelper.post(url: NetworkConstant.loginUrl, requestBody: params);
    return response;
  }

  // Resend otp post api
  static Future<dynamic> fetchResendOtpPostApi(Object params) async {
    Map<String, dynamic> response = await _httpHelper.post(url: NetworkConstant.loginUrl, requestBody: params, isRequireAuthorization: true);
    return response;
  }
}
