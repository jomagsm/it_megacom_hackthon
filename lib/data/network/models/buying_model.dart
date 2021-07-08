import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/user_model.dart';

import 'buying_product_model.dart';

class Buying {
  DateTime date; // "2017-08-06T00:00:00"
  UserApp user;
  List<BuyingProduct> buyingProduct;
  double total;
  double howMuchPay;
  double howMuchDebt;

  Buying({
    this.date,
    this.user,
    this.buyingProduct,
    this.total,
    this.howMuchPay,
    this.howMuchDebt,
  });
}

List<Buying> getAllBuying() {
  List<Buying> buying = [];
  buying.add(Buying(
      date: DateTime.parse('2021-07-03T12:30:00'),
      user: getAllUser().first,
      buyingProduct: [
        BuyingProduct(product: getAllProduct().first, qnt: 2),
        BuyingProduct(product: getAllProduct().last, qnt: 5),
        BuyingProduct(product: getAllProduct()[2], qnt: 7)
      ],
      total: 20,
      howMuchPay: 20,
      howMuchDebt: 0));
  buying.add(Buying(
      date: DateTime.parse('2021-07-03T12:40:00'),
      user: getAllUser()[1],
      buyingProduct: [BuyingProduct(product: getAllProduct()[2], qnt: 1)],
      total: 45,
      howMuchPay: 20,
      howMuchDebt: 25));

  buying.add(Buying(
      date: DateTime.parse('2021-07-03T13:40:00'),
      user: getAllUser()[2],
      buyingProduct: [
        BuyingProduct(product: getAllProduct()[2], qnt: 1),
        BuyingProduct(product: getAllProduct()[0], qnt: 3)
      ],
      total: 75,
      howMuchPay: 50,
      howMuchDebt: 25));
  return buying;
}

List<Buying> getUserBuying(UserApp user) {
  List<Buying> userBuyingList = [];
  List<Buying> buyingList = getAllBuying();
  for (var buying in buyingList) {
    if (buying.user.password == user.password) {
      userBuyingList.add(buying);
    }
  }
  return userBuyingList;
}
