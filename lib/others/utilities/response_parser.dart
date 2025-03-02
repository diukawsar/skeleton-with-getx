part of '../_others.dart';


mixin ResponseParser {
  /// helper to parse response
  ApiResponse parseResponse(http.Response response) {
    if (response.statusCode == 200) {
      return Success(jsonDecode(response.body), response.statusCode);
    } else if (response.statusCode == 201) {
      return Success(jsonDecode(response.body), response.statusCode);
    } else if (response.statusCode == 401) {
      return Error(UnAuthorized(), response.statusCode);
    } else {
      return Error(ServerError(), response.statusCode);
    }
  }
}