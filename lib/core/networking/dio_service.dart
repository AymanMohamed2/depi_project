import 'package:cancer/core/networking/api_services.dart';
import 'package:dio/dio.dart';

class DioService extends ApiServices {
  final Dio dio;

  DioService(this.dio);
  @override
  Future<Map<String, dynamic>> delete(String url) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> get(String url) async {
    final result = await dio.get(url);
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> put(String url, Map<String, dynamic> body) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> post(
      {required String url,
      required dynamic body,
      Map<String, dynamic>? headers}) async {
    final response = await dio.post(url,
        data: body,
        options:
            Options(headers: headers ?? {"Content-Type": "application/json"}));

    return response.data;
  }
}
