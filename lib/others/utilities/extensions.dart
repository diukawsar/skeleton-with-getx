part of '../_others.dart';

extension CustomExtension<T> on StateControllerMixin {
  Widget screenObx(BuildContext context,
      {required Widget Function(BuildContext) builder, Widget? onLoading}) {
    return Obx(() {
      if (onLoading != null && screenState.value == ScreenStatus.loading) {
        FocusScope.of(context).unfocus();
      }
      return Stack(
        children: [
          Positioned.fill(child: builder(context)),
          if (onLoading != null && screenState.value == ScreenStatus.loading)
          // if (onLoading != null)
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 60.h,
                    width: 60.h,
                    decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.all(8.h),
                    child: onLoading,
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}
