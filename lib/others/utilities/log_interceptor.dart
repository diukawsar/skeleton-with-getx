part of '../_others.dart';

class RequestLogInterceptor {
  final log = Get.find<Logger>();

  void onRequest(dynamic message) {
    log.i("Request\n\n$message");
  }
}
