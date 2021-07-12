import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/generated/intl/messages_en.dart';
import 'package:it_megacom_hackthon/screens/buffet/screen.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/bloc/basket_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/payment_modal_data.dart';

class PaymentModalWindow extends StatelessWidget {
  final List<ProductBuying> buyingProductList;
  final List<Product> selectedProductsList;
  PaymentModalWindow(
      {Key key, @required this.buyingProductList, this.selectedProductsList})
      : super(key: key);
  final bloc = BasketBloc();

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
            error: (_error) => {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(_error.toString())))
            },
            successPayment: (messages) => {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(messages))),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsListGrid()),
                  (route) => false)
            },
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
                              selectedProductsList: selectedProductsList));
                      },
                      child: Text('Повторить'))
                ],
              ),
            ),
            data: (_data) => PaymentData(
              buyingProductList: buyingProductList,
              selectedProductsList: selectedProductsList,
              data: _data,
            ),
          );
        }));
  }
}
