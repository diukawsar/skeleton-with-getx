part of '_services.dart';

//=========================================================
// Apis Before Authenticate To App (Starts With `/`)
//=========================================================
abstract class ApiEndpoints{
  static const String login           = "/login";
  static const String register        = "/register";
  static const String resetPassword   = "/reset-password";
}
