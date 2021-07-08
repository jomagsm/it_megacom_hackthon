import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:sizer/sizer.dart';

class BuyingProductListView extends StatelessWidget {
  final List<BuyingProduct> buyingProduct;
  const BuyingProductListView({Key key, @required this.buyingProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.0.h,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: buyingProduct.length,
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0.5,
          color: ColorPalette.dividerColor,
        ),
        itemBuilder: (_, index) {
          return SizedBox(
            height: 100,
            child: ListTile(
              title: Text('item $index'),
            ),
          );
        },
      ),
    );
  }
}
