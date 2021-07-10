import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/bloc/basket_bloc.dart';
import 'package:it_megacom_hackthon/theme/acolor_theme.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuyingProductListView extends StatelessWidget {
  final List<ProductBuying> buyingProduct;
  final List<Product> selectedProductsList;
  BuyingProductListView(
      {Key key, @required this.buyingProduct, this.selectedProductsList})
      : super(key: key);

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
                Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(getProduct(
                                      buyingProduct[index].id,
                                      selectedProductsList)
                                  .picture),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                            width: 82,
                            child: Text(
                                getProduct(buyingProduct[index].id,
                                        selectedProductsList)
                                    .name,
                                style: AtextThemes.titleTextField)),
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.only(left: 25, bottom: 5),
                          icon: const Icon(Icons.minimize, size: 13),
                          onPressed: () {
                            context.read<BasketBloc>().add(BasketEvent.minus(
                                productId: buyingProduct[index].id));
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
                            child: Text(buyingProduct[index].amount.toString(),
                                style: AtextThemes.titleTextField),
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.only(right: 25),
                          icon: const Icon(Icons.add, size: 13),
                          onPressed: () {
                            context.read<BasketBloc>().add(BasketEvent.plus(
                                productId: buyingProduct[index].id));
                          },
                        ),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 19,
                          width: 20,
                          child: Center(
                            child: Text(
                                (getProduct(buyingProduct[index].id,
                                            selectedProductsList)
                                        .price
                                        .toInt())
                                    .toString(),
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
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
