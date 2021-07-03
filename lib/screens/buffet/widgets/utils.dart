import 'package:it_megacom_hackthon/data/network/models/product_model.dart';

checkSelectedProduct(id, List<Product> selectedProductsList) {
  for (var product in selectedProductsList) {
    if (product.id == id) {
      return false;
    }
  }
  return true;
}
