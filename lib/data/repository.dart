import 'package:it_megacom_hackthon/data/network/models/debt_models/user_debt.dart';
import 'package:it_megacom_hackthon/data/network/service_api.dart';

import 'network/models/debt_models/payment_model.dart';
import 'network/models/product_model.dart';

class Repository {
  final _serviceApi = ServiceApi();
  // Получение списка продуктов

  Future<List<Product>> getProductsAll() async {
    try {
      final response = await _serviceApi.getProductsAll();
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<UserDebt> getUserOperations(String pin) async {
    try {
      final response = await _serviceApi.getUserOperations(pin);
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<Payment> makePayment(String pin, double payment) async {
    try {
      final response = await _serviceApi.makePayment(pin, payment);
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future makePurchase(json) async {
    try {
      final response = await _serviceApi.makePurchase(json);
      return response;
    } catch (e) {
      throw (e);
    }
  }
}
