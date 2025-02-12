part of '../../_views.dart';

//=========================================================
// Login Page/Screen
//=========================================================
class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => RegisterScreen());
              },
              child: Text("Go To Register"),
            )
          ],
        ),
      ),
    );
  }
}
