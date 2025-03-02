part of '_services.dart';

//=========================================================
// Apis Before Authenticate To App (Starts With `/`)
//=========================================================
abstract class ApiEndpoints{
  static const String login           = "/accounts/normal_login/";
  static const String register        = "/accounts/normal_signup/";
  static const String resetPassword   = "/reset-password";
}
