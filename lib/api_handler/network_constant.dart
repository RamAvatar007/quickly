import 'package:quickly_design_one/api_handler/api_method.dart';

class NetworkConstant{
  static String mainUrl = ApiConstant.baseUrl;

  // All Api

static String signUpApi = "$mainUrl/auth/sign-up";
static String signInApi = "$mainUrl/auth/login";
}