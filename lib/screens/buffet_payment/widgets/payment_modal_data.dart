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
import 'package:it_megacom_hackthon/theme/atext_theme.dart';
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
      contentPadding: EdgeInsets.all(10),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(S.of(context).payDetail, style: AtextThemes.titlePage),
          IconButton(
            icon: SvgPicture.asset(SvgIconCollect.close),
            onPressed: () {
              Navigator.pop(context);
            },
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
            Text(
              "Оплата",
              style: AtextThemes.titlePage,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Пин-код", style: AtextThemes.titleTextField),
              Text("Сумма оплаты", style: AtextThemes.titleTextField),
            ]),
            SizedBox(
              height: 5,
            ),
            RowInputPinMoney(
              mapKeyFirst: "pin",
              hintTextFirst: "Введите пин-код",
              mapKeySecond: "money",
              hintTextSecond: "Введите сумму",
            ),
            SizedBox(height: 7),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Долг", style: AtextThemes.titleTextField),
              Text("Сумма сдачи", style: AtextThemes.titleTextField),
            ]),
            SizedBox(
              height: 7,
            ),
            RowInputPinMoney(
              mapKeyFirst: "debt",
              hintTextFirst: "Сумма долга",
              mapKeySecond: "change",
              hintTextSecond: "Сумма сдачи",
            ),
            SizedBox(height: 7),
            TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                child: Text(
                  'Оплатить',
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
