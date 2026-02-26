import 'dart:developer';
import 'package:dio/dio.dart';
class ResposeHandle {

   static dynamic handleResponse(Response response) {
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
       // log("Success: ${jsonDecode(response.data.toString())}");
      log("Success: ${response.data}");
        return response.data;
      } else {
        log("Error Response: ${response.statusCode} - ${response.data}");
        throw Exception("Error: ${response.statusCode}, ${response.data}");
      }
    } catch (e) {
      throw Exception("Failed to parse response: $e");
    }
  }
}