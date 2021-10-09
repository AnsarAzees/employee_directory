import 'package:dio/dio.dart';
import 'package:employee_directory/exceptions/server_exception.dart';
import 'package:employee_directory/utils/urls.dart';
import 'package:meta/meta.dart';

abstract class HttpClient {
  Future<dynamic> get(String url,
      {Map<String, dynamic> headers,
      Map<String, dynamic> queryParameters,
      bool authorization = false});
  Future<dynamic> post(String url,
      {Map<String, dynamic> headers,
      @required body,
      bool authorization = false});
  Future<dynamic> put(String url,
      {Map<String, dynamic> headers,
      @required body,
      bool authorization = false});
}

class HttpClientImpl implements HttpClient {
  final Dio _dio;

  HttpClientImpl(this._dio) {
    _initApiClient();
  }

  void _initApiClient() {
    var dio = new Dio(BaseOptions(
      baseUrl: URLs.baseURL,
      connectTimeout: 50000,
      receiveTimeout: 100000,
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
      responseType: ResponseType.json,
    ));

    _dio.options = dio.options;
    _dio.interceptors.add(LogInterceptor(
        responseBody: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        error: true));
  }

  @override
  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool authorization = false,
  }) async {
    try {
      if (authorization) {}

      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      // final String res = json.encode(response.data);
      // print('[API Dio Helper - GET] Server Response: $res');

      return response.data;
    } on DioError catch (e) {
      // print('[API Dio Helper - GET] Connection Exception => ' + e.message);

      if (e.response?.data != null) {
        throw Exception(e.response?.data);
      }

      throw Exception(e.message);
    }
  }

  @override
  Future<dynamic> post(
    String url, {
    Map<String, dynamic>? headers,
    @required body,
    bool authorization = false,
  }) async {
    try {
      // print('[API Dio Helper - POST] Server Request: $body');

      if (authorization) {}

      final response =
          await _dio.post(url, data: body, options: Options(headers: headers));

      // final String res = json.encode(response.data);
      // print('[API Dio Helper - POST] Server Response: ' + res);

      return response.data;
    } on DioError catch (e) {
      // print('[API Dio Helper - POST] Connection Exception => ' + e.message);

      // if (e.response.statusCode == 401) {
      //   Modular.to.pushReplacementNamed(Routers.userLogin);
      // }

      if (e.response?.data != null) throw Exception(e.response?.data);

      throw Exception(e.message);
    }
  }

  @override
  Future put(
    String url, {
    Map<String, dynamic>? headers,
    @required body,
    bool authorization = false,
  }) async {
    try {
      // print('[API Dio Helper - POST] Server Request: $body');
      if (authorization) {}

      final response =
          await _dio.put(url, data: body, options: Options(headers: headers));

      // final String res = json.encode(response.data);
      // print('[API Dio Helper - POST] Server Response: ' + res);

      return response.data;
    } on DioError catch (e) {
      // print('[API Dio Helper - POST] Connection Exception => ' + e.message);

      if (e.response?.data != null) throw ServerException(e.response?.data);

      throw Exception(e.message);
    }
  }
}
