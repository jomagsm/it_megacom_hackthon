import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/utils.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';

class CardContent extends StatelessWidget {
  final int index;
  final data;
  const CardContent({Key key, @required this.data, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: checkSelectedProduct(
                data.productsList[index].id, data.selectedProductsList)
            ? Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorPalette.productsCardName,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 1.75.h, vertical: 1.75.h),
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
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: ColorPalette.productsCardSelectedBackground),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 9.0.h,
                      child: SvgPicture.asset(
                        'assets/icons/shopping-basket 2.svg',
                        color: ColorPalette.productsCardSelectedBasket,
                      ),
                    ),
                    Text("+${data.productsList[index].price.round()} c",
                        style: TextThemes.selectedProductprice)
                  ],
                ),
              ));
  }
}
