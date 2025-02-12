import 'package:e_sort/views/_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  // -------------------- App Entry Point
  runApp(
    GetMaterialApp.router(
      getPages: pages,
    ),
  );
}
