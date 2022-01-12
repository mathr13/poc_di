import 'package:dio/dio.dart';
import 'package:poc_di/services/rest_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  late Dio dio;
  DioHelper() {
    dio = Dio()
      ..options = BaseOptions(
        headers: {}
      );
    // dio.interceptors.add(PrettyDioLogger(
    //   requestBody: true,
    //   responseBody: true,
    //   compact: false,
    // ));
  }
  RestClient getDioClient() => RestClient(dio);

}