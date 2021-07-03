import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/utils.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';

class CardContent extends StatelessWidget {
  final int index;
  final data;
  const CardContent({Key key, @required this.data, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: checkSelectedProduct(
                data.productsList[index].id, data.selectedProductsList)
            ? Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorPalette.productsCardName,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      data.productsList[index].name,
                      textAlign: TextAlign.left,
                      style: TextThemes.productsName,
                    ),
                  ),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                    color: ColorPalette.productsCardSelectedBackground),
                padding: EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,
                      child: SvgPicture.asset(
                        'assets/icons/shopping-basket 2.svg',
                        color: ColorPalette.productsCardSelectedBasket,
                      ),
                    ),
                    Text("+${data.productsList[index].price.round()}",
                        style: TextThemes.productsName)
                  ],
                ),
              ));
  }
}
