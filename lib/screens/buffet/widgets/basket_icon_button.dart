import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/components/utils.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/screen.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';

class BasketButton extends StatelessWidget {
  final data;
  BasketButton({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        data.buyingProduct.length == 0
            ? openPopupNullBasket(context)
            : showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PaymentModalWindow(
                    buyingProduct: data.buyingProduct,
                  );
                },
              );
      },
      child: Stack(
        children: [
          SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('assets/images/basket background.png')),
          Positioned(
            top: 20,
            left: 25,
            child: SizedBox(
                width: 45,
                height: 45,
                child: Image.asset(
                  'assets/images/shopping-basket 2.png',
                )),
          ),
          Positioned(
              top: 5,
              left: 60,
              child: Container(
                decoration: new BoxDecoration(
                  color: ColorPalette.purple,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: data.basketValue == 0
                      ? BorderRadius.all(Radius.circular(50))
                      : new BorderRadius.all(Radius.elliptical(100, 50)),
                ),
                child: Container(
                  margin: data.basketValue == 0
                      ? const EdgeInsets.symmetric(horizontal: 3, vertical: 0)
                      : const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: data.basketValue == 0
                      ? Text('0', style: TextThemes.productsPrice)
                      : Text('${data.basketValue.toString()} c',
                          style: TextThemes.productsPrice),
                ),
              ))
        ],
      ),
    );
  }
}
