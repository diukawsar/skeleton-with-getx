import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Response;
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import '../models/_models.dart';
import '../views/_views.dart';

// -------------------- Utilities Section
part 'utilities/api_error.dart';
part 'utilities/api_response_helper.dart';
part 'utilities/themes.dart';
part 'utilities/http_client.dart';
part 'utilities/header_interceptor.dart';
part 'utilities/response_parser.dart';
part 'utilities/get_toast.dart';
part 'utilities/extensions.dart';
part 'utilities/helpers.dart';
part 'utilities/log_interceptor.dart';


// -------------------- Global Widgets


// -------------------- Screen Specific Widgets
