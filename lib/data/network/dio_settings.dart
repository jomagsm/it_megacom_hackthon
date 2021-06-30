import 'package:dio/dio.dart';

class DioSettings {
  static final mainServer = "http://173.249.20.184:7001";
  Dio dio = Dio(BaseOptions(
    baseUrl: mainServer,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));
  initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(InterceptorsWrapper(onResponse: (response) {
      if (response.statusCode == 204) {
        throw DioError(
          error: "Отсутствуют данные",
          response: Response(
            statusCode: 400,
            request: response.request,
          ),
        );
      }
    }, onError: (DioError error) async {
      if (error.type == DioErrorType.CONNECT_TIMEOUT) {
        throw DioError(
          error: "Сервер не отвечает попробуйте еще раз",
          response: Response(
            statusCode: 400,
            request: error.request,
          ),
        );
      } else if (error.message.contains("SocketException:")) {
        throw DioError(
          error: "Отсутствует интернет соединение",
          response: Response(
            statusCode: 400,
            request: error.request,
          ),
        );
      }
      // else if (error.response.statusCode == 401) {
      //   ErrorHandler().showError(
      //     DioError(error: ErrorHandlerType.auth),
      //   );
      // }
      return error;
    }));
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
    interceptors.requestLock.unlock();
  }

  DioSettings() {
    initialSettings();
  }
}
