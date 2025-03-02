part of '../_others.dart';

class ApiClientCustom extends http.BaseClient {
  final http.Client _client;
  final HeaderInterceptor? _headerInterceptor;
  final RequestLogInterceptor _logInterceptor;
  final bool log;

  ApiClientCustom({HeaderInterceptor? headerInterceptor, this.log = true})
      : _client = http.Client(),
        _headerInterceptor = headerInterceptor,
        _logInterceptor = RequestLogInterceptor();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    Map<String, String>? finalHeaders = _headerInterceptor?.getHeaders();
    _printLog(request.url, finalHeaders ?? {});
    if (finalHeaders != null) {
      request.headers.addAll(finalHeaders);
    }
    return _client.send(request);
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    Map<String, String> finalHeaders = _headerInterceptor?.getHeaders() ?? {};
    _printLog(url, finalHeaders);
    return _client.post(url, headers: finalHeaders, body: body);
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    Map<String, String> finalHeaders = _headerInterceptor?.getHeaders() ?? {};
    _printLog(url, finalHeaders);
    return _client.get(url, headers: finalHeaders);
  }

  @override
  Future<http.Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    Map<String, String> finalHeaders = _headerInterceptor?.getHeaders() ?? {};
    _printLog(url, finalHeaders);
    return _client.delete(url, headers: finalHeaders, body: body);
  }

  @override
  Future<http.Response> patch(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    Map<String, String> finalHeaders = _headerInterceptor?.getHeaders() ?? {};
    _printLog(url, finalHeaders);
    return _client.patch(url,
        headers: finalHeaders, body: body, encoding: encoding);
  }

  void _printLog(Uri uri, Map<String, String> headers) {
    if (log) {
      _logInterceptor.onRequest("${uri.toString()}\n\nHeaders:\n$headers");
    }
  }

  @override
  void close() {
    _client.close();
  }
}
