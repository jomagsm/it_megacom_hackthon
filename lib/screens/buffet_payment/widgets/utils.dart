import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';

getTotal(List<BuyingProduct> buyingProduct) {
  double total = 0;
  for (var i in buyingProduct) {
    total += i.qnt * i.product.price;
  }
  return total;
}

changeQnt(List<BuyingProduct> buyingProduct, int id, String value) {
  for (var i in buyingProduct) {
    if (i.product.id == id) {
      if (value == "plus") {
        i.qnt += 1;
      } else {
        if (i.qnt <= 1) {
          i.qnt = 0;
        } else {
          i.qnt = 0;
        }
      }
    }
  }
  return buyingProduct;
}
