part of '../_views.dart';

// -------------------- Entry Application For Center
// -------------------- Progress or dialog
class MainApplication extends StatefulWidget {
  final Widget child;
  const MainApplication({super.key, required this.child});

  @override
  State<MainApplication> createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  late MainController mainController;
  @override
  void initState() {
    super.initState();
    mainController = Get.put(MainController());
  }
  @override
  void dispose() {
    mainController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
