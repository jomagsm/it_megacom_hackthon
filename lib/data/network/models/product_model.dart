// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.id,
    this.name,
    this.picture,
    this.price,
    this.active,
  });

  final int id;
  final String name;
  final String picture;
  final double price;
  final bool active;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        picture: json["picture"],
        price: json["price"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "picture": picture,
        "price": price,
        "active": active,
      };
}

getProduct(int productId, _productsList) {
  for (var product in _productsList) {
    if (product.id == productId) {
      return product;
    }
  }
}

List<Product> getActiveProductsList(_productList) {
  List<Product> activeProducts = [];
  for (var product in _productList) {
    if (product.active) {
      activeProducts.add(product);
    }
  }
  return activeProducts;
}
