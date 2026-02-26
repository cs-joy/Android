// lib/data/sources/remote/user_api_service.dart
import 'package:dio/dio.dart';


import '../../../core/network/api_clients.dart';
import '../../../core/network/api_endpoints.dart';
import '../../models/user_model.dart';

class UserApiService {
  final ApiClient apiClient;

  UserApiService({required this.apiClient});

  Future<List<UserModel>> fetchUsers() async {
    final Response response = await apiClient.getRequest(endpoints:  ApiEndpoints.register);
    final List data = response.data as List;
    return data.map((json) => UserModel.fromJson(json)).toList();
  }
}

