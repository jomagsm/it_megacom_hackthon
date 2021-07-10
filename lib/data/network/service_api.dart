import 'package:dio/dio.dart';
import 'package:it_megacom_hackthon/data/network/models/debt_models/user_debt.dart';

import 'dio_settings.dart';
import 'models/debt_models/payment_model.dart';
import 'models/product_model.dart';

class ServiceApi {
  DioSettings _dioSettings;
  Dio _dio;

  /// И мап для запроса
  Map<String, dynamic> _request;
  static ServiceApi _instance = new ServiceApi.internal();
  factory ServiceApi() => _instance;
  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  Future<List<Product>> getProductsAll() async {
    try {
      Response<String> response = await _dio.get("/product/all");
      // queryParameters: {"PageNumber": 1, "PageSize": 200});
      return productFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future<UserDebt> getUserOperations(pin) async {
    try {
      Response<String> response =
          await _dio.get("/operation/$pin", queryParameters: {});
      return userDebtFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future<Payment> makePayment(String pin, double payment) async {
    try {
      Response<String> response = await _dio.put("/pin/make/payment",
          queryParameters: {"payment": payment, "pin": pin});
      return paymentFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future makePurchase(json) async {
    try {
      Response<String> response =
          await _dio.post("/operation/append", data: json);
      print(response.statusCode);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
