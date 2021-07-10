// To parse this JSON data, do
//
//     final buyingProduct = buyingProductFromJson(jsonString);

import 'dart:convert';

BuyingProduct buyingProductFromJson(String str) =>
    BuyingProduct.fromJson(json.decode(str));

String buyingProductToJson(BuyingProduct data) => json.encode(data.toJson());

class BuyingProduct {
  BuyingProduct({
    this.money,
    this.pin,
    this.products,
  });

  double money;
  String pin;
  List<ProductBuying> products;

  factory BuyingProduct.fromJson(Map<String, dynamic> json) => BuyingProduct(
        money: json["money"],
        pin: json["pin"],
        products: List<ProductBuying>.from(
            json["products"].map((x) => ProductBuying.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "money": money,
        "pin": pin,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class ProductBuying {
  ProductBuying({
    this.amount,
    this.id,
  });

  int amount;
  int id;

  factory ProductBuying.fromJson(Map<String, dynamic> json) => ProductBuying(
        amount: json["amount"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "id": id,
      };
}

bool checkListOfProduct(List buyingProductList, id) {
  for (var i in buyingProductList) {
    if (i.id == id) {
      return true;
    }
  }
  return false;
}
