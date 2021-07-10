import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/resource/svg_icons.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/bloc/basket_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/list_view.dart';
import 'package:sizer/sizer.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';

class PaymentModalWindow extends StatelessWidget {
  final List<ProductBuying> buyingProductList;
  final List<Product> selectedProductsList;
  PaymentModalWindow(
      {Key key, @required this.buyingProductList, this.selectedProductsList})
      : super(key: key);
  final bloc = BasketBloc();
  String pin;
  double money;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BasketBloc>(
        create: (BuildContext context) => bloc
          ..add(BasketEvent.initial(
              buyingProductList: buyingProductList,
              selectedProductsList: selectedProductsList)),
        child:
            BlocConsumer<BasketBloc, BasketState>(listener: (context, state) {
          state.maybeWhen(
            error: (_error) => {},
            orElse: () {},
          );
        }, builder: (context, state) {
          return state.maybeMap(
              orElse: () => Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              loading: (_) => CircularProgressIndicator(),
              error: (error) => Scaffold(
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(),
                        Text(error.message),
                        ElevatedButton(
                            onPressed: () {
                              bloc
                                ..add(BasketEvent.initial(
                                    buyingProductList: buyingProductList,
                                    selectedProductsList:
                                        selectedProductsList));
                            },
                            child: Text('Повторить'))
                      ],
                    ),
                  ),
              data: (_data) => AlertDialog(
                    contentPadding: EdgeInsets.all(10),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(S.of(context).payDetail,
                            style: AtextThemes.titlePage),
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
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Наименование",
                                  textAlign: TextAlign.center,
                                  style: AtextThemes.hintTextField,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Кол-во",
                                  textAlign: TextAlign.center,
                                  style: AtextThemes.hintTextField,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Цена",
                                  textAlign: TextAlign.center,
                                  style: AtextThemes.hintTextField,
                                ),
                              ),
                            ],
                          ),
                          BuyingProductListView(
                              buyingProduct: buyingProductList,
                              selectedProductsList: selectedProductsList),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Итого",
                                  style: AtextThemes.sumfDebt,
                                ),
                              ),
                              Text(_data.total.toString(),
                                  style: AtextThemes.sumfDebt),
                              Text('с',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                  )),
                            ],
                          ),
                          Text(
                            "Оплата",
                            style: AtextThemes.titlePage,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Пин-код",
                                    style: AtextThemes.titleTextField),
                                Text("Сумма оплаты",
                                    style: AtextThemes.titleTextField),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  onSubmitted: (_number) {
                                    pin = _number;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Введите пин-код',
                                    hintStyle: AtextThemes.hintTextField,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  onSubmitted: (_value) {
                                    money = double.parse(_value);
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Введите сумму',
                                    hintStyle: AtextThemes.hintTextField,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Долг", style: AtextThemes.titleTextField),
                                Text("Сумма сдачи",
                                    style: AtextThemes.titleTextField),
                              ]),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Сумма долга',
                                    hintStyle: AtextThemes.hintTextField,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Сумма сдачи',
                                    hintStyle: AtextThemes.hintTextField,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white)),
                              child: Text(
                                'Оплатить',
                                style: TextStyle(
                                  fontSize: 11.0,
                                ),
                              ),
                              onPressed: () {
                                print('PAY ' * 20);
                                bloc
                                  ..add(BasketEvent.payButton(
                                      pin: pin, money: money));
                              }),
                        ],
                      ),
                    ),
                  ));
        }));
  }
}
