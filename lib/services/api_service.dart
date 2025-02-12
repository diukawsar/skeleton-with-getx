part of '_services.dart';

//=========================================================
// Api Service That Hold All Api Operations
//=========================================================
/// INDEX
/// 1. [login]
/// 2. [register]
class ApiService {
  static const String _baseUrl = "";
  static final Client _apiClient = Client();

  ApiService._();

  /// This constructor for those api only that don't need access token
  /// as header like /login, /register etc
  factory ApiService.unAuthApis() {
    return ApiService._();
  }

  /// This constructor for those api only that need access token
  /// This will handle passing token using header automatically
  /// by itself like get user /profile, /dashboard data etc
  factory ApiService.authApis() {
    return ApiService._();
  }

  //=========================================================
  // 1. Login User Api
  //=========================================================
  Future<ApiResponse> login(RequestBody body) async {
    Response response = await _apiClient.post(
      _uri(ApiEndpoints.login),
      body: body.toJson(),
    );
    return _responseParser(response);
  }

  //=========================================================
  // 2. Register User Api
  //=========================================================
  Future<ApiResponse> register(RequestBody body) async {
    Response response = await _apiClient.post(
      _uri(ApiEndpoints.register),
      body: body.toJson(),
    );
    return _responseParser(response);
  }

  /// use / to start an end point
  Uri _uri(String endPoint) {
    return Uri.parse("$_baseUrl$endPoint");
  }

  /// helper to parse response
  ApiResponse _responseParser(Response response) {
    if (response.statusCode < 300) {
      return Success<String>(response.body, response.statusCode);
    } else if (response.statusCode == 401) {
      return Error(UnAuthorized(), response.statusCode);
    } else {
      return Error(ServerError(), response.statusCode);
    }
  }
}
