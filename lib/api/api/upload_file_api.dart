// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:quickly_design_one/api/api/response_helper.dart';
import 'api_helper.dart';
import 'apis.dart';


class FileUploadApi {
  FileUploadApi._();
  static Future<ResponseHelper> uploadFile(File? image) async {
    ApiHelper apiHelper = ApiHelper();
    String baseUrl = dotenv.get("BASEURL");
    log("Image URL :: ${"$baseUrl${Apis.instance.fileUpload}"}");
    if (image == null) {
      return ResponseHelper(null, "no image uploaded","", false);
    }
    final isInternet = await apiHelper.checkInternet();
    if (isInternet) {
      try {
        final request = http.MultipartRequest(
            "POST", Uri.parse("$baseUrl${Apis.instance.fileUpload}"));
        request.files.add(await http.MultipartFile.fromPath(
          'file',
          image.path,
        ));

        request.fields.addAll({"type":"subscart_driver"});
        var response = await request.send();
        if (response.statusCode == 200) {
          final jsonResponse = await response.stream.bytesToString();

          return ResponseHelper(
              jsonDecode(jsonResponse)["data"]["upload"], "File Uploaded","", true);
        } else {
          return ResponseHelper(null, "something went wrong","", false);
        }
      } on Exception catch (e) {
        return ResponseHelper(null, "$e","", false);
      }
    } else {
      return ResponseHelper(null, "No internet","", false);
    }
  }
}