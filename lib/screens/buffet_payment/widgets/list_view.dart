import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/bloc/basket_bloc.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
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
      height: 14.62.h,
      width: 80.0.w,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: buyingProduct.length,
        separatorBuilder: (BuildContext context, int index) => Container(
          margin: EdgeInsets.only(top: 0.58.h, bottom: 1.61.h),
          child: Divider(
            height: 0.5,
            color: ColorPalette.dividerColor,
          ),
        ),
        itemBuilder: (_, index) {
          return Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
                        height: 5.26.h,
                        width: 5.26.h,
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
                          width: 20.0.w,
                          child: Text(
                              getProduct(buyingProduct[index].id,
                                      selectedProductsList)
                                  .name,
                              style: TextThemes.titleTextField)),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 7.0.w,
                        child: IconButton(
                          padding: EdgeInsets.only(bottom: 7),
                          icon: const Icon(Icons.minimize, size: 13),
                          onPressed: () {
                            context.read<BasketBloc>().add(BasketEvent.minus(
                                productId: buyingProduct[index].id));
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(1.0.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(buyingProduct[index].amount.toString(),
                              style: TextThemes.titleTextField),
                        ),
                      ),
                      Container(
                        width: 7.0.w,
                        margin: EdgeInsets.only(right: 2.11.w),
                        child: IconButton(
                          padding: EdgeInsets.only(bottom: 0),
                          icon: const Icon(Icons.add, size: 13),
                          onPressed: () {
                            context.read<BasketBloc>().add(BasketEvent.plus(
                                productId: buyingProduct[index].id));
                          },
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // height: 19,
                        // width: 20,
                        child: Center(
                          child: Text(
                              (getProduct(buyingProduct[index].id,
                                          selectedProductsList)
                                      .price
                                      .toInt())
                                  .toString(),
                              style: TextThemes.titleTextField),
                        ),
                      ),
                      Text('с',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 10.0.sp,
                                  fontWeight: FontWeight.normal,
                                  color: ColorPalette.textforgot,
                                  decoration: TextDecoration.underline))),
                    ],
                  )),
            ],
          );
        },
      ),
    );
  }
}
