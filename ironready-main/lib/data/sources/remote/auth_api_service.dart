import 'dart:developer';
import 'package:dio/dio.dart';
import '../../../core/network/api_clients.dart';
import '../../../core/network/api_endpoints.dart';
import '../local/shared_preference/shared_preference.dart';

class AuthApiService {
  final ApiClient apiClient;
  AuthApiService({required this.apiClient});
  Future<bool> register() async {
    final Response response = await apiClient.postRequest(
      
      endpoints: ApiEndpoints.register,
    );
    log(response.toString());

    return true;
  }

  Future<bool> login({required String email, required String password}) async {
    try {
      final body = {"email": email, "password": password};
      final dynamic response = await apiClient.postRequest(
        body: body,
        endpoints: ApiEndpoints.login,
      );
      if (response['success'] == true) {
        await SharedPreferenceData.setToken(
          response['authorization']['access_token'],
        );
        final token = await SharedPreferenceData.getToken();
        log("$token");
        return true;
      } else {
        return false;
      }
    } catch (error) {
      rethrow;
    }
  }
}
