part of '../_others.dart';

class GetToast {
  static showInfo(String msg) {
    Get.snackbar(
      "Info",
      msg,
      borderRadius: 12.r,
      backgroundColor: colorAppBar,
      barBlur: 0,
      colorText: colorOnPrimary,
      animationDuration: Duration(
        milliseconds: 400,
      ),
      boxShadows: [
        BoxShadow(
          color: colorBackground,
          blurRadius: 60,
        )
      ]
    );
  }

  static showError(String msg) {
    Get.snackbar(
      "Warning",
      msg,
      borderRadius: 12.r,
      backgroundColor: colorDialogRed,
      barBlur: 0,
      messageText: Text(
        msg,
        style: poppinsStyle.copyWith(
          fontSize: 14.sp,
          color: colorError,
        ),
      ),
      titleText: Text(
        "Warning",
        style: poppinsStyle.copyWith(
          fontSize: 12.sp,
          color: colorError,
          fontWeight: FontWeight.w700,
        ),
      ),
      // colorText: colorError,
      animationDuration: Duration(
        milliseconds: 400,
      ),
      dismissDirection: DismissDirection.horizontal,
    );
  }
}
