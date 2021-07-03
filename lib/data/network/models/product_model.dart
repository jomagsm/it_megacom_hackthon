class Product {
  int id;
  String name;
  double price;
  int qnt;
  String avatar;

  Product({this.id, this.name, this.price, this.qnt, this.avatar});
}

Product getProduct(productId) {
  List<Product> products = getAllProduct();
  for (var product in products) {
    if (product.id == productId) {
      return product;
    }
  }
  return null;
}

List<Product> getAllProduct() {
  List<Product> products = [];
  products.add(Product(
      id: 1,
      name: 'Пирожки с картошкой',
      price: 10,
      qnt: 20,
      avatar:
          'https://www.svoimirykami.club/upload/iblock/d2e/d2e4a2d3eec1ace413a0afe8341d61ef.jpg'));

  products.add(Product(
      id: 2,
      name: 'Сосиски в тесте',
      price: 25,
      qnt: 18,
      avatar:
          'https://img.povar.ru/main/25/38/80/87/sosiski_v_teste_po_gostu-360265.jpg'));

  products.add(Product(
      id: 3,
      name: 'Самсы',
      price: 45,
      qnt: 12,
      avatar: 'https://img.povar.ru/main/d3/9d/fc/40/somsa_samosa-4902.jpg'));

  products.add(Product(
      id: 4,
      name: 'Пирожки с картошкой',
      price: 10,
      qnt: 20,
      avatar:
          'https://www.svoimirykami.club/upload/iblock/d2e/d2e4a2d3eec1ace413a0afe8341d61ef.jpg'));

  products.add(Product(
      id: 5,
      name: 'Сосиски в тесте',
      price: 25,
      qnt: 18,
      avatar:
          'https://img.povar.ru/main/25/38/80/87/sosiski_v_teste_po_gostu-360265.jpg'));

  products.add(Product(
      id: 6,
      name: 'Самсы',
      price: 45,
      qnt: 12,
      avatar: 'https://img.povar.ru/main/d3/9d/fc/40/somsa_samosa-4902.jpg'));

  products.add(Product(
      id: 7,
      name: 'Сосиски в тесте',
      price: 25,
      qnt: 18,
      avatar:
          'https://img.povar.ru/main/25/38/80/87/sosiski_v_teste_po_gostu-360265.jpg'));

  products.add(Product(
      id: 8,
      name: 'Самсы',
      price: 45,
      qnt: 12,
      avatar: 'https://img.povar.ru/main/d3/9d/fc/40/somsa_samosa-4902.jpg'));

  return products;
}
