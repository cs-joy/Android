// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class ErrorHandle {
 static void handleDioError(DioException e) {
  print("Error Type: ${e.type}");
  switch (e.type) {
    case DioExceptionType.badCertificate:
      print("badCertificate: ${e.message}");
      throw Exception("Bad certificate error: ${e.message}");
    case DioExceptionType.badResponse:
      print("badResponse: ${e.message}");
      if (e.response != null) {
        print("Status Code: ${e.response?.statusCode}");
        print("Response Data: ${e.response?.data}");
      }
      throw Exception("${e.response?.data['message']['message']}");
    case DioExceptionType.cancel:
      print("Request cancelled: ${e.message}");
      throw Exception("Request was cancelled: ${e.message}");
    case DioExceptionType.connectionError:
      print("Connection error: ${e.message}");
      throw Exception("Connection error: ${e.message}");
    case DioExceptionType.connectionTimeout:
      print("Connection Timeout: ${e.message}");
      print("Request URL: ${e.requestOptions.uri}");
      throw Exception("Connection timeout error: ${e.message}");
    case DioExceptionType.receiveTimeout:
      print("Receive Timeout: ${e.message}");
      print("Request URL: ${e.requestOptions.uri}");
      throw Exception("Receive timeout error: ${e.message}");
    case DioExceptionType.sendTimeout:
      print("Send Timeout: ${e.message}");
      print("Request URL: ${e.requestOptions.uri}");
      throw Exception("Send timeout error: ${e.message}");
    case DioExceptionType.unknown:
      print("Unknown error: ${e.message}");
      if (e.error != null) {
        print("Error: ${e.error}");
      }
      throw Exception("Unknown error: ${e.message}");
  }
}

}