import 'product_model.dart';

class BuyingProduct {
  Product product;
  int qnt;

  BuyingProduct({
    this.product,
    this.qnt,
  });
}

bool checkListOfProduct(List<BuyingProduct> buyingProductList, id) {
  for (var i in buyingProductList) {
    if (i.product.id == id) {
      return true;
    }
  }
  return false;
}
