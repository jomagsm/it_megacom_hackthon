import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';

getTotal(
    List<ProductBuying> buyingProduct, List<Product> selectedProductsList) {
  double total = 0;
  for (var i in buyingProduct) {
    Product product = getProduct(i.id, selectedProductsList);
    total += i.amount * product.price;
  }
  return total;
}

changeQnt(List<ProductBuying> buyingProduct, int id, String value) {
  for (var i in buyingProduct) {
    if (i.id == id) {
      if (value == "plus") {
        i.amount += 1;
      } else {
        if (i.amount <= 1) {
          i.amount = 0;
        } else {
          i.amount -= 1;
        }
      }
    }
  }
  return buyingProduct;
}
