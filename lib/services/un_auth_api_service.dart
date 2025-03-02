part of '_services.dart';


//=========================================================
// Api Service That Hold All Api Operations which won't need
// token as header
//=========================================================


/// INDEX
/// 1. [login]
/// 2. [register]
class UnAuthApiService extends GetxService with ResponseParser{
  static const String _baseUrl = "http://192.168.20.201:3333";
  late Client _apiClient;

  UnAuthApiService();

  @override
  void onInit() {
    super.onInit();
    _apiClient = Client();
  }

  //=========================================================
  // 1. Login User Api
  //=========================================================
  Future<ApiResponse> login(RequestBody body) async {
    Response response =
        await _apiClient.post(_uri(ApiEndpoints.login), body: body.toJson());
    return parseResponse(response);
  }

  //=========================================================
  // 2. Register User Api
  //=========================================================
  Future<ApiResponse> register(RequestBody body) async {
    Response response =
        await _apiClient.post(_uri(ApiEndpoints.register), body: body.toJson());
    return parseResponse(response);
  }



  Uri _uri(String endPoint) {
    return Uri.parse("$_baseUrl$endPoint");
  }

  @override
  void onClose() {
    super.onClose();
    _apiClient.close();
  }
}
