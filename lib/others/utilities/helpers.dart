part of '../_others.dart';

//=========================================================
// Loading State Mixin
//=========================================================
mixin StateControllerMixin {
  Rx<ScreenStatus> screenState = Rx(ScreenStatus.initialize);

  void updateState({required ScreenStatus status}) {
    screenState.value = status;
  }
}
enum ScreenStatus { initialize, loading, success, error }

//=========================================================
// Main Controller Mixin to find Easily
//=========================================================
mixin MainControllerMixin {
  final mController = Get.find<MainController>();
}
