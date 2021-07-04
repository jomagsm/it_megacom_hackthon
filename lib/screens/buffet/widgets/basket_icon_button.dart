import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_megacom_hackthon/components/utils.dart';
import 'package:it_megacom_hackthon/resource/svg_icons.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/screen.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';

class BasketButton extends StatelessWidget {
  final data;
  BasketButton({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.0.h,
      width: 9.0.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ColorPalette.basketColorGradient1,
                  ColorPalette.basketColorGradient2
                ]),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            height: 8.12.h,
            width: 8.12.h,
          ),
          Container(
            width: 3.8.h,
            height: 3.5.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/shopping-basket 2.png',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: data.basketValue == 0
                      ? const EdgeInsets.symmetric(horizontal: 3)
                      : const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: new BoxDecoration(
                      color: ColorPalette.purple,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: data.basketValue == 0
                          ? BorderRadius.all(Radius.circular(50))
                          : new BorderRadius.all(Radius.elliptical(100, 50))),
                  child: data.basketValue == 0
                      ? Text('0', style: TextThemes.productsPrice)
                      : Text('${data.basketValue.toString()} c',
                          style: TextThemes.productsPrice),
                )),
          )
        ],
      ),
    );

    // return Container(
    //   height: 10.0.h,
    //   width: 12.0.h,
    //   child: InkWell(
    //     onTap: () {
    //       data.buyingProduct.length == 0
    //           ? openPopupNullBasket(context)
    //           : showDialog(
    //               context: context,
    //               builder: (BuildContext context) {
    //                 return PaymentModalWindow(
    //                   buyingProduct: data.buyingProduct,
    //                 );
    //               },
    //             );
    //     },
    //     child: Stack(
    //       children: [
    //         Container(
    //             width: 8.12.h,
    //             height: 8.12.h,
    //             child: Image.asset('assets/images/basket background.png')),
    //         Positioned(
    //           top: 15,
    //           left: 22,
    //           child: SizedBox(
    //               width: 3.8.h,
    //               height: 3.8.h,
    //               child: Image.asset(
    //                 'assets/images/shopping-basket 2.png',
    //               )),
    //         ),
    //         Positioned(
    //             top: 5,
    //             left: 65,
    //             child: Container(
    //               decoration: new BoxDecoration(
    //                 color: ColorPalette.purple,
    //                 border: Border.all(color: Colors.transparent),
    //                 borderRadius: data.basketValue == 0
    //                     ? BorderRadius.all(Radius.circular(50))
    //                     : new BorderRadius.all(Radius.elliptical(100, 50)),
    //               ),
    //               child: Container(
    // margin: data.basketValue == 0
    //     ? const EdgeInsets.symmetric(horizontal: 3, vertical: 0)
    //     : const EdgeInsets.symmetric(
    //         horizontal: 10, vertical: 3),
    //                 child: data.basketValue == 0
    //                     ? Text('0', style: TextThemes.productsPrice)
    //                     : Text('${data.basketValue.toString()} c',
    //                         style: TextThemes.productsPrice),
    //               ),
    //             ))
    //       ],
    //     ),
    //   ),
    // );
  }
}
