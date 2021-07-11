import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/utils.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';

class CardContentPrice extends StatelessWidget {
  final int index;
  final data;
  const CardContentPrice({Key key, @required this.index, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: checkSelectedProduct(
                data.productsList[index].id, data.selectedProductsList)
            ? Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 7.0.w, right: 10),
                  child: CircleAvatar(
                    radius: 3.0.h,
                    backgroundColor: ColorPalette.productsCardCirculeAvatar,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "${data.productsList[index].price}",
                        style: TextThemes.productsPrice,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'c/шт',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox());
  }
}
