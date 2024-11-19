import 'package:cancer/core/networking/api_services.dart';
import 'package:http/http.dart' as http;

class HttpServices extends ApiServices {
  http.Client client = http.Client();
  @override
  Future<Map<String, dynamic>> delete(String url) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> get(String url) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> post(
      {required String url,
      required dynamic body,
      Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> put(String url, Map<String, dynamic> body) {
    throw UnimplementedError();
  }
}
