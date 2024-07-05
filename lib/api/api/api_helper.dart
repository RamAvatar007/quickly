// // ignore_for_file: non_constant_identifier_names, prefer_final_fields
//
// import 'dart:convert';
// import 'dart:developer';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:get/get.dart' as g ;
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'package:quickly_design_one/api/api/response_helper.dart';
// import 'package:subscart_driver/api/response_helper.dart';
// import 'package:subscart_driver/services/local_services/local_config.dart';
// import 'package:subscart_driver/utils/common.dart';
// import 'package:subscart_driver/utils/methods/device_details.dart';
// import 'package:subscart_driver/utils/widgets/others/dimensions.dart';
//
// import '../main.dart';
// import '../routes/app_routes.dart';
// import '../utils/snackbar/custom_snackbar.dart';
//
// class ApiHelper {
//   String baseUrl = "";
//
//   Map<String, String> _headers = {
//     "Content-Type": "application/json",
//     "fcmToken": sp?.getString(LocalConfig.fcmToken) ?? "",
//     "device_id" : DeviceDetails.instance.deviceId,
//     "device_token": sp?.getString(LocalConfig.fcmToken) ?? "",
//     "devicetype" : DeviceDetails.instance.deviceType,
//     "latitude" : lattitudeValue.toString(),
//     "longitude" : longitudeValue.toString(),
//     "Accept-Language" : (sp!.getBool(LocalConfig.isArabic) ?? false) ? "ar" : "en",
//     "location": deliveryBoyAddress
//   };
//
//   ApiHelper() {
//     baseUrl = dotenv.get("BASEURL");
//   }
//
//   ///[check for internet]
//   Future<bool> checkInternet() async {
//     try {
//       final response = await http.get(Uri.parse("https://www.google.com"));
//
//       if (response.statusCode == 200) {
//         return true; // Internet is available
//       } else {
//         // CustomSnackbar.redShowSnackBar("Alert!", "No internet Available",);
//         return false; // Internet is not available
//       }
//     } catch (e) {
//       // CustomSnackbar.redShowSnackBar("Alert!", "No internet Available");
//       return false; // Error occurred, assume no internet
//     }
//   }
//
//   ///[for post requests]
//   Future<ResponseHelper> post({required String url, required dynamic body, bool showMessage = true, bool redMessage = true}) async {
//     final isInternet = await checkInternet();
//    getCurrentLocation() ;
//
//     if (!isInternet) {
//       return ResponseHelper(body, "No internet", "", checkStatus(false));
//     }
//
//     else {
//
//
//
//       log("REQUEST URL -: $baseUrl$url");
//       log("JSON REQUEST -: ${body is String ? body : getPrettyJSONString(body)}");
//       log("HEADERS -: $_headers");
//       log("METHOD -: POST");
//       _headers["device_token"] = sp!.getString(LocalConfig.fcmToken) ?? "";
//       log("device_token -: ${sp!.getString(LocalConfig.fcmToken)}");
//
//
//       final token = sp?.getString(LocalConfig.token);
//       log("api token ========> $token");
//
//       if (token?.isNotEmpty == true) {
//         _headers['Authorization'] = 'Bearer $token';
//         log("AUTH TOKEN -: Bearer $token");
//       }
//       try {
//         final Response response = await http.post(Uri.parse("$baseUrl$url"), body: jsonEncode(body), headers: _headers);
//
//         final validatedResult = validateResponse(response, showMessage, redMessage);
//         // log("validated Res : ${}");
//         // if (validatedResult == 'jwt expired') {
//         //   // sharedsp?.signOut(
//         //   //     NavigationService.instance.navigationKey.currentContext!);
//         // }
//         return validatedResult;
//       } catch (err, stack ) {
//         log("error ====> $err");
//         log("Stack Error : $stack");
//
//         String errorMessage = err.toString();
//         if (errorMessage.startsWith("ClientException with SocketException: Connection timed out")) {
//           return ResponseHelper(body, "Connection Time Out Error!", "", checkStatus(false));
//         } else {
//           return ResponseHelper(body, errorMessage, "", checkStatus(false));
//         }
//       }
//     }
//   }
//
//   ///[for get requests]
//   Future<ResponseHelper> get({required String url, bool showMessage = true, bool redMessage = true}) async {
//     final isInternet = await checkInternet();
//     getCurrentLocation() ;
//     log("REQUEST URL -: $baseUrl$url");
//     log("HEADERS -----: $_headers");
//     log("METHOD -: GET");
//     log("device_token -: ${sp!.getString(LocalConfig.fcmToken)}");
//
//     if (!isInternet) {
//       return ResponseHelper(null, "No internet", "", checkStatus(false));
//     } else {
//       try {
//
//       final token = sp?.getString(LocalConfig.token);
//       log("api token ========> ${sp?.getString(LocalConfig.token)}");
//
//       if (token?.isNotEmpty == true) {
//         _headers['Authorization'] = 'Bearer $token';
//         log("AUTH TOKEN -: Bearer $token");
//       }
//         final Response response = await http.get(Uri.parse("$baseUrl$url"), headers: _headers);
//         final validatedResult = await validateResponse(response, showMessage, redMessage);
//         if  (validatedResult.body["message"] == 'jwt expired' || validatedResult.body["message"] == "Account Deactivated Please contact to admin") {
//           log("CHECK ::: ${validatedResult.body["message"]}");
//           await sp!.clear() ;
//           g.Get.toNamed(Routes.loginScreen);
//           sp!.putBool(LocalConfig.isLogin, false);
//
//           if(validatedResult.message == 'jwt expired') {
//             CustomSnackbar.redShowSnackBar("Alert!", "Token Expired! Please Login Again");
//           } else {
//             CustomSnackbar.redShowSnackBar("Alert!", validatedResult.message ?? "");
//           }
//         }
//         return validatedResult;
//       } catch (err) {
//         log("error ====> $err");
//
//         String errorMessage = err.toString();
//         if (errorMessage.startsWith("ClientException with SocketException: Connection timed out")) {
//           return ResponseHelper(null, "Connection Time Out Error!", "", checkStatus(false));
//         } else {
//           return ResponseHelper(null, "$err", "", checkStatus(false));
//         }
//
//       }
//     }
//   }
//
//
//
//   Future<ResponseHelper> put({required String url, dynamic body, bool showMessage = true, bool redMessage = true}) async {
//     final isInternet = await checkInternet();
//     getCurrentLocation() ;
//     log("REQUEST URL -: $baseUrl$url");
//     log("JSON REQUEST -: ${getPrettyJSONString(body)}");
//     log("HEADERS -: $_headers");
//     log("METHOD -: PUT");
//     _headers["device_token"] = sp!.getString(LocalConfig.fcmToken) ?? "";
//     log("device_token -: ${sp!.getString(LocalConfig.fcmToken)}");
//
//
//     if (!isInternet) {
//       //showAlert(type: ErrorType.error, message: "No Internet");
//       return ResponseHelper(body, "No internet", "", checkStatus(false));
//     } else {
//       // final token = sharedsp?.getToken();
//       // GetLocation.getLocationData();
//       final token = sp?.getString("token");
//
//       if (token?.isNotEmpty == true) {
//         _headers['Authorization'] = 'Bearer $token';
//         log("AUTH TOKEN -: Bearer $token");
//       }
//       try {
//         final Response response = await http.put(Uri.parse("$baseUrl$url"), body: jsonEncode(body ?? {}), headers: _headers);
//         final validatedResult = validateResponse(response, showMessage, redMessage);
//         // if (validatedResult.message == 'jwt expired') {
//         //   LogoutMethod.logout();
//         //   // sharedsp?.signOut(
//         //   //     NavigationService.instance.navigationKey.currentContext!);
//         // }
//         return validatedResult;
//       } catch (err) {
//         // return ResponseHelper(body, "$err", "", checkStatus(false));
//         log("error ====> $err");
//
//         String errorMessage = err.toString();
//         if (errorMessage.startsWith("ClientException with SocketException: Connection timed out")) {
//           return ResponseHelper(body, "Connection Time Out Error!", "", checkStatus(false));
//         } else {
//           return ResponseHelper(body, "$err", "", checkStatus(false));
//         }
//       }
//     }
//   }
//
//
//
//   ///[for delete requests]
//   Future<ResponseHelper> delete({required String url, bool showMessage = true, bool redMessage = true}) async {
//     final isInternet = await checkInternet();
//     getCurrentLocation() ;
//     log("REQUEST URL -: $baseUrl$url");
//     log("HEADERS -: $_headers");
//     log("METHOD -: Delete");
//     _headers["device_token"] = sp!.getString(LocalConfig.fcmToken) ?? "";
//     log("device_token -: ${sp!.getString(LocalConfig.fcmToken)}");
//
//
//     if (!isInternet) {
//       // showAlert(type: ErrorType.error, message: "No Internet");
//       return ResponseHelper(null, "No internet", "", checkStatus(false));
//     } else {
//       try {
//         // final token = sharedsp?.getToken();
//         final token = sp?.getString("token");
//         // GetLocation.getLocationData();
//         if (token?.isNotEmpty == true) {
//           _headers['Authorization'] = 'Bearer $token';
//           log("AUTH TOKEN -: Bearer $token");
//         }
//         final Response response = await http.delete(Uri.parse("$baseUrl$url"), headers: _headers);
//         final validatedResult = validateResponse(response, showMessage, redMessage);
//         // if  (await validatedResult.message == 'jwt expired') {
//         //   LogoutMethod.logout();
//         //   // sharedsp?.signOut(
//         //   //     NavigationService.instance.navigationKey.currentContext!);
//         // }
//         return validatedResult;
//       } catch (err) {
//         return ResponseHelper(null, "$err", "", checkStatus(false));
//       }
//     }
//   }
//
//   ///[check for valid response]
//   Future<ResponseHelper> validateResponse(Response? response, bool showMessage, bool redMessage) async {
//     log("redMessage =====> $redMessage");
//     if (response != null) {
//       final jsonBody = jsonResponse(response.body);
//       log("JSON RESPONSE -: ${getPrettyJSONString(jsonBody)}");
//       switch (response.statusCode) {
//         case 200:
//         case 201:
//           log("Status Code  =====> ${jsonBody['status']}");
//           log("redMessage1 =====> $redMessage");
//           if (jsonBody.containsKey("token")) {
//             await sp?.putString('token', jsonBody["token"]);
//             log("token12345 =====> ${sp?.getString("token")}");
//           }
//           if (checkStatus(jsonBody['status'])) {
//             if (showMessage) {
//               CustomSnackbar.greenShowSnackBar("Alert!", checkMessage(jsonBody) ?? "");
//             }
//           } else {
//             log("redMessage3 =====> $redMessage");
//
//             if (redMessage) {
//               log("redMessage4 =====> $redMessage");
//               CustomSnackbar.redShowSnackBar("Alert!", checkMessage(jsonBody) ?? "", redMessage: redMessage);
//             }
//           }
//
//           return ResponseHelper(jsonBody , checkMessage(jsonBody), jsonBody['token'], checkStatus(jsonBody['status']));
//
//         default:
//           log("redMessage2 =====> $redMessage");
//           if (redMessage) {
//             CustomSnackbar.redShowSnackBar(
//                 "Alert!", checkMessage(jsonBody) ?? "", redMessage: redMessage);
//           }
//
//           return ResponseHelper(null, checkMessage(jsonBody), "", checkStatus(jsonBody['status']));
//       }
//     } else {
//       return ResponseHelper(null, "response is empty", "", false);
//     }
//   }
//
//   ///[return true or false based on status code]
//   bool checkStatus(dynamic status) {
//     // log("status Check : ${status} ");
//     // return status >= 200 && status < 300;
//     return status  ;
//   }
//
//   dynamic jsonResponse(String? body) {
//     if (body == null) {
//       return;
//     } else {
//       return jsonDecode(body);
//     }
//   }
//
//   String? checkMessage(dynamic body) {
//     if (!checkStatus(body['status'])) {
//       if (body["data"] != null && body['data'].isNotEmpty) {
//         if (body['data'].containsKey("error")) {
//           return body["data"]["error"][0];
//         } else {
//           return body['message'];
//         }
//       } else {
//         return body['message'];
//       }
//     } else {
//       return body['message'];
//     }
//   }
//
//   String getPrettyJSONString(jsonObject) {
//     var encoder = const JsonEncoder.withIndent("     ");
//     return encoder.convert(jsonObject);
//   }
// }
