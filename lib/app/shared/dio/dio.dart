import 'package:dio/dio.dart';

class DioClient {
  final dio = Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout: 20000,
    receiveTimeout: 20000,
  ));
}
