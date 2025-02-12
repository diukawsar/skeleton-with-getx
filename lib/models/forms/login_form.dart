part of '../_models.dart';
//=========================================================
// Login Form To Pass With Request
//=========================================================
class LoginForm extends RequestBody {
  final String email;
  final String password;

  LoginForm({required this.email, required this.password});

  @override
  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password};
  }
}
