part of '_views.dart';

final pages = [
  // -------------------- Login
  GetPage(
    name: '/',
    page: () => LoginScreen(),
    binding: LoginBinding(),
  ),
  // -------------------- Register
  GetPage(
    name: '/register',
    page: () => RegisterScreen(),
    binding: RegisterBinding(),
  ),
];
