import 'package:dio/dio.dart';

class DioClient {
  final dio = Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
    receiveTimeout: 15000,
  ));
}
