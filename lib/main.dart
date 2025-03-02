import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'others/_others.dart';
import 'services/_services.dart';
import 'views/_views.dart';

/// application entry point
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  initServices();
  // -------------------- App Entry Point
  runApp(
    ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          defaultTransition: Transition.fadeIn,
          enableLog: true,
          getPages: pages,
          theme: myTheme,
          builder: (context, child) => MainApplication(
            child: child ?? Container(),
          ),
        );
      },
    ),
  );
}

//=========================================================
// Service class injection
//=========================================================
void initServices() {
  var tokenInterceptor = TokenInterceptor();
  Get.lazyPut(() => UnAuthApiService());
  Get.lazyPut(() => Logger(printer: PrettyPrinter()));
  // interceptor to take token for each auth request
  Get.lazyPut(() => AuthApiService.get(headerInterceptor: tokenInterceptor));
}
