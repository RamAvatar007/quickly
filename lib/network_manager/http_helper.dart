import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:quickly_design_one/helper/storage_helper.dart';

import '../utils/print_value.dart';
import '../utils/toast_message.dart';

class HttpHelper {
  ///GET API HANDLER
  Future<dynamic> get({required url, bool isRequireAuthorization = false}) async {
    Map<String, String> apiHeaders = {'Content-Type': 'application/json'};
    if (isRequireAuthorization) {
      apiHeaders = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${StorageHelper().getUserBearerToken()}',
      };
    }

    try {
      final apiResponse = await http.get(Uri.parse(url), headers: apiHeaders);
      printValue(
        url,
        tag: "API GET URL: ",
      );
      printValue(
        apiHeaders,
        tag: "API GET Headers: ",
      );
      printValue(
        apiResponse.body,
        tag: "API GET Response: ",
      );
      return _returnResponse(response: apiResponse);
    } on SocketException {
      return null;
    }
  }

  ///POST API HANDLER
  Future<dynamic> post({required String url, Object? requestBody, bool isRequireAuthorization = false}) async {
    Map<String, String> apiHeaders = {'Content-Type': 'application/json'};
    if (isRequireAuthorization) {
      apiHeaders = {
        'Content-Type': 'application/json',
        'Authorization': StorageHelper().getUserBearerToken(),
      };
    }

    try {
      http.Response apiResponse;
      if (requestBody == null) {
        apiResponse = await http.post(Uri.parse(url), headers: apiHeaders);
      } else {
        apiResponse = await http.post(Uri.parse(url), body: jsonEncode(requestBody), headers: apiHeaders);
      }
      printValue(
        url,
        tag: "API POST URL: ",
      );
      printValue(
        apiHeaders,
        tag: "API POST Headers: ",
      );
      printValue(
        requestBody,
        tag: "API REQUEST Body: ",
      );
      printValue(
        apiResponse.body,
        tag: "API POST Response: ",
      );
      return _returnResponse(response: apiResponse);
    } on SocketException {
      return null;
    }
  }

  /// PUT API HANDLER
  Future<dynamic> put({required String url, Object? requestBody, bool isRequireAuthorization = false}) async {
    Map<String, String> apiHeaders = {'Content-Type': 'application/json'};
    if (isRequireAuthorization) {
      apiHeaders = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer "userBaseToken"',
      };
    }

    try {
      http.Response apiResponse;
      if (requestBody == null) {
        apiResponse = await http.put(Uri.parse(url), headers: apiHeaders);
      } else {
        apiResponse = await http.put(Uri.parse(url), body: jsonEncode(requestBody), headers: apiHeaders);
      }
      printValue(
        url,
        tag: "API PUT URL: ",
      );
      printValue(
        apiHeaders,
        tag: "API PUT Headers: ",
      );
      printValue(
        requestBody,
        tag: "API REQUEST Body: ",
      );
      printValue(apiResponse.body, tag: "API PUT Response: ");
      return _returnResponse(response: apiResponse);
    } on SocketException {
      return null;
    }
  }

  dynamic _returnResponse({required http.Response response}) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        if (responseJson.containsKey('message')) {
          toastMessage(responseJson['message'].toString());
        }
        return responseJson;

      case 201:
        var responseJson = json.decode(response.body.toString());
        if (responseJson.containsKey('message')) {
          toastMessage(responseJson['message'].toString());
        }
        return responseJson;

      case 400:
        var decodeError = json.decode(response.body.toString());
        // toastMessage(decodeError.toString());    All Message Display
        if (decodeError.containsKey('message')) {
          toastMessage(decodeError['message'].toString());
        }
        throw Exception('API Error Status Code 400');

      case 401:
        throw Exception('UNAUTHORIZED (Token Error) 401');

      case 500:
        toastMessage("Please Check Internet Connection!!");
        throw Exception('INTERNAL SERVER ERROR with Status Code 500');

      default:
        toastMessage(response.statusCode.toString());
        throw Exception('Error occurred while Communication with Server with StatusCode : ${response.statusCode.toString()}');
    }
  }
}
