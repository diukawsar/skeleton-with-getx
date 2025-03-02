part of '_services.dart';

//=========================================================
// Api Service That Hold All Authenticate End Point Api
// Operations like, token can be passed via header
//=========================================================
/// INDEX
class AuthApiService extends GetxService with ResponseParser{
  static const String _baseUrl = "";
  late ApiClientCustom _apiClient;

  AuthApiService._(this._apiClient);

  /// This constructor for those api only that need access token
  /// This will handle passing token using header automatically
  /// by itself like get user /profile, /dashboard data etc
  factory AuthApiService.get({required HeaderInterceptor headerInterceptor}) {
    var apiClient = ApiClientCustom(headerInterceptor: headerInterceptor);
    return AuthApiService._(apiClient);
  }

  //=========================================================
  // . User Profile Update Api
  //=========================================================
  Future<ApiResponse> updateProfile(RequestBody body) async {
    Response response =
        await _apiClient.post(_uri(ApiEndpoints.login), body: body.toJson());
    return parseResponse(response);
  }

  /// use / to start an end point
  Uri _uri(String endPoint) {
    return Uri.parse("$_baseUrl$endPoint");
  }

  @override
  void onClose() {
    super.onClose();
    _apiClient.close();
  }
}
