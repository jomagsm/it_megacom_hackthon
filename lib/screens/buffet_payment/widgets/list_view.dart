import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/bloc/basket_bloc.dart';
import 'package:it_megacom_hackthon/theme/acolor_theme.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuyingProductListView extends StatelessWidget {
  final List<BuyingProduct> buyingProduct;
  const BuyingProductListView({Key key, @required this.buyingProduct})
      : super(key: key);
  final int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 80.0.w,
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
            height: 55,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(buyingProduct[index].product.picture),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                    width: 82,
                    child: Text(buyingProduct[index].product.name,
                        style: AtextThemes.titleTextField)),
                IconButton(
                  padding: EdgeInsets.only(left: 25, bottom: 5),
                  icon: const Icon(Icons.minimize, size: 13),
                  onPressed: () {                
                      context.read<BasketBloc>().add(
                          BasketEvent.minus(productId: buyingProduct[index].product.id));                                        
                  },
                ),
                Container(
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Text(buyingProduct[index].qnt.toString(),
                        style: AtextThemes.titleTextField),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 25),
                  icon: const Icon(Icons.add, size: 13),
                  onPressed: () {
          context.read<BasketBloc>().add(
          BasketEvent.plus(productId: buyingProduct[index].product.id));
          },
                ),
                Container(
                  height: 19,
                  width: 20,
                  child: Center(
                    child: Text(
                        (buyingProduct[index].product.price.toInt()).toString(),
                        style: AtextThemes.titleTextField),
                  ),
                ),
                Text('с',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: AcolorPalette.textforgot,
                            decoration: TextDecoration.underline))),
              ],
            ),
          );
        },
      ),
    );
  }
}
