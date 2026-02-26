import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../data/sources/local/shared_preference/shared_preference.dart' show SharedPreferenceData;
import 'api_endpoints.dart';
import 'error_handle.dart';
import 'respose_handle.dart';



class ApiClient {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: Duration(seconds: 10),
      sendTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );
  static Map<String, String>? headers;

  static Future <void> headerSet(String? token) async {
    final tokn = await SharedPreferenceData.getToken();
    log(token ?? 'token');
    log(tokn ?? 'tokn');
    headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
      if (tokn != null) 'Authorization': 'Bearer $tokn',
    };
  }

  /// GET request
 Future<dynamic> getRequest({
    required String endpoints,
    // Map<String, String>? headers,
  }) async {
   
    try {
      log("\n\n\n\nurl :${ApiEndpoints.baseUrl}/$endpoints \n\n\n\n");
      final response = await _dio.get(
        '/$endpoints',
        options: Options(
          headers: headers ?? {"Content-Type": "application/json"},
        ),
      );
      // log("\n\n\nGET Request Successful: ${response.data}\n\n\n");
      return ResposeHandle.handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        ErrorHandle.handleDioError(e);
      } else {
        log('Non-Dio error: $e');
      }
    }
  }

  /// POST request
   Future<dynamic> postRequest({
    required String endpoints,
    Map<String, dynamic>? body,

    FormData? formData,
  }) async {
    try {
      log("\n\nurl :${ApiEndpoints.baseUrl}/$endpoints\n\n");
      final response = await _dio.post(
        '/$endpoints',
        data: body ?? formData,
        options: Options(
          headers: headers ?? {"Content-Type": "application/json"},
        ),
      );
      //log("\nPOST Request Successful: ${response.data}\n");
      return ResposeHandle.handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        ErrorHandle.handleDioError(e);
      } else {
        log('Non-Dio error: $e');
      }
    }
  }

  /// PUT request
  static Future<dynamic> putRequest({
    required String endpoints,
    required Map<String, dynamic> body,
  }) async {
    try {
      log("\n\nurl :${ApiEndpoints.baseUrl}/$endpoints\n\n");
      final response = await _dio.put(
        '/$endpoints',
        data: body,
        options: Options(
          headers: headers ?? {"Content-Type": "application/json"},
        ),
      );
      // debugPrint("\nPUT Request Successful: ${response.data}\n");
      return ResposeHandle.handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        ErrorHandle.handleDioError(e);
      } else {
        log('Non-Dio error: $e');
      }
    }
  }

  /// PATCH request
  static Future<dynamic> patchRequest({
    required String endpoints,
    Map<String, dynamic>? body,
    // Map<String, String>? headers,
    FormData? formData,
  }) async {
    try {
      log("\n\nurl :${ApiEndpoints.baseUrl}/$endpoints\n\n");
      final response = await _dio.patch(
        '${ApiEndpoints.baseUrl}/$endpoints',
        data: body ?? formData,
        options: Options(
          headers: headers ?? {"Content-Type": "multipart/form-data"},
        ),
      );

      debugPrint("\nPATCH Request Successful");
      debugPrint("Status: ${response.statusCode}");
      debugPrint("Data: ${response.data}");

      return ResposeHandle.handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        ErrorHandle.handleDioError(e);
      } else {
        log('Non-Dio error: $e');
      }
    }
  }

  /// PATCH request
  static Future<dynamic> deleteRequest({
    required String endpoints,

    // Map<String, String>? headers,
  }) async {
    try {
      log("\n\nurl :${ApiEndpoints.baseUrl}/$endpoints\n\n");
      final response = await _dio.delete(
        '/$endpoints',
        options: Options(
          headers: headers ?? {"Content-Type": "multipart/form-data"},
        ),
      );

      debugPrint("delete Request Successful");
      debugPrint("Status: ${response.statusCode}");
      debugPrint("Data: ${response.data}");

      return ResposeHandle.handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        ErrorHandle.handleDioError(e);
      } else {
        log('Non-Dio error: $e');
      }
    }
  }
}
