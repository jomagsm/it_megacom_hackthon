import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/resource/svg_icons.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/bloc/basket_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/row_input_pin_money.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/row_title.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/row_total.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'list_view.dart';

class PaymentData extends StatelessWidget {
  final List<ProductBuying> buyingProductList;
  final List<Product> selectedProductsList;
  final dynamic data;
  const PaymentData(
      {Key key,
      @required this.buyingProductList,
      this.selectedProductsList,
      this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: EdgeInsets.all(10),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(S.of(context).payDetail, style: TextThemes.titlePage),
          Container(
            height: 6.75.w,
            width: 6.75.w,
            child: IconButton(
              icon: SvgPicture.asset(
                SvgIconCollect.close,
                // fit: BoxFit.cover,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
      content: Container(
        width: 74.0.w,
        child: Column(
          children: [
            RowTitile(),
            BuyingProductListView(
                buyingProduct: buyingProductList,
                selectedProductsList: selectedProductsList),
            RowTotal(
              total: data.total.toString(),
            ),
            SizedBox(
              height: 2.35.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                S.of(context).pay,
                style: TextThemes.titlePage,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(S.of(context).pin, style: TextThemes.titleTextField),
              Text(S.of(context).summPay, style: TextThemes.titleTextField),
            ]),
            SizedBox(
              height: 5,
            ),
            RowInputPinMoney(
              mapKeyFirst: "pin",
              hintTextFirst: S.of(context).inputPin,
              mapKeySecond: "money",
              hintTextSecond: S.of(context).inputSum,
            ),
            SizedBox(height: 7),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(S.of(context).debt, style: TextThemes.titleTextField),
              Text(S.of(context).sumChange, style: TextThemes.titleTextField),
            ]),
            SizedBox(
              height: 7,
            ),
            RowInputPinMoney(
              mapKeyFirst: "debt",
              hintTextFirst: S.of(context).sumDebt,
              mapKeySecond: "change",
              hintTextSecond: S.of(context).sumChange,
            ),
            SizedBox(height: 7),
            TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                child: Text(
                  S.of(context).payment,
                  style: TextStyle(
                    fontSize: 11.0,
                  ),
                ),
                onPressed: () {
                  context.read<BasketBloc>()..add(BasketEvent.payButton());
                }),
          ],
        ),
      ),
    );
  }
}
