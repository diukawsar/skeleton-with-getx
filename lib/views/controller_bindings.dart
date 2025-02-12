part of '_views.dart';
//=========================================================
// Login Controller
//=========================================================
class LoginBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => LoginController());
}

//=========================================================
// Register Controller
//=========================================================
class RegisterBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => RegisterController());
}
