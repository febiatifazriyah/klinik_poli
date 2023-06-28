import 'package:dio/dio.dart';

final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://649c3386048075719237ae10.mockapi.io/',
    connectTimeout: 5000,
    receiveTimeout: 3000));

class ApiClient {
  Future<Response> get(String path) async {
    try {
      final Response = await dio.get(Uri.encodeFull(path));
      return Response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> post(String path, dynamic data) async {
    try {
      final Response = await dio.post(Uri.encodeFull(path), data: data);
      return Response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      final Response = await dio.put(Uri.encodeFull(path), data: data);
      return Response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> delete(String path) async {
    try {
      final Response = await dio.delete(Uri.encodeFull(path));
      return Response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
