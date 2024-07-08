
import 'api_constant.dart';

class NetworkConstant {
  static const String mainUrl = ApiConstant.baseUrl;

  // Only Auth URL
  static const String signUpUrl = "$mainUrl/api/app/auth/sign-up";
  static const String loginUrl = "$mainUrl/api/app/auth/login";
  static const String sendOtpMailUrl = "$mainUrl/api/app/auth/send-otp";
  static const String verifyOtpUrl = "$mainUrl/api/app/auth/verify-otp";
  static const String reSendOtpUrl = "$mainUrl/api/app/auth/send-update-otp";
}
