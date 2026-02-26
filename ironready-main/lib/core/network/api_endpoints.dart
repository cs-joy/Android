class ApiEndpoints {
  static const String baseUrl =
      "https://maui-intermediate-represented-option.trycloudflare.com";
  static const String register = 'api/auth/register';
   static const String login = 'api/auth/login';
  static const String switchRole = 'api/auth/switch-role';
  static const String verifyMail = 'api/auth/verify-email';
  static const String resendOtp = 'api/auth/resend-verification-email';
  static const String loadUser = 'api/auth/me';
  static const String updateProfile = 'api/auth/update-profile';
  static const String forgetPassword = 'api/auth/forgot-password';
  static const String createAndagetJob = 'api/jobs';
}
