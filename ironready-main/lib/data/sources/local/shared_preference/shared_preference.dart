import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceData {
static Future<void> setToken(String? token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('auth_token', "$token");
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }

  static Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('auth_token');
  }

  static Future<String?> getRole() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('role');
  }

  Future<void> setRole(String? role) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('role', "$role");
  }

  static Future<void> removeRole() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('role');
  }

  // EMAIL
  Future<String?> getEmailId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('email');
  }

  Future<void> setEmailId(String? id) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('email', id ?? "No email_id");
  }

  Future<void> removeEmailId() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('email');
  }
}
