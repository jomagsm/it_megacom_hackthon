import 'package:it_megacom_hackthon/data/network/service_api.dart';

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
}
