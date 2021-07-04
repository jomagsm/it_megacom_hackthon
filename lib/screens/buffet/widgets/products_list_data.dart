import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet/buffet_bloc/buffet_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/custom_app_bar.dart';
import 'package:sizer/sizer.dart';

import 'basket_icon_button.dart';
import 'card_content.dart';
import 'card_content_price.dart';

class ProductsListData extends StatelessWidget {
  final BuffetBloc bloc;
  final data;
  ProductsListData({Key key, @required this.data, this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: BasketButton(data: data),
      appBar: CustomAppBar(
        height: 20.5.h,
      ),

      // body: data.openModal
      // ? Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) =>
      //           PaymentModalWindow(buyingProduct: data.buyingProduct),
      //     ))
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(24),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: data.productsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (_, index) {
              return InkWell(
                  onDoubleTap: () {
                    context.read<BuffetBloc>().add(BuffetEvent.selectedProduct(
                        productId: data.productsList[index].id));
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                              image:
                                  NetworkImage(data.productsList[index].avatar),
                              fit: BoxFit.cover,
                            )),
                      ),
                      CardContent(data: data, index: index),
                      CardContentPrice(
                        data: data,
                        index: index,
                      ),
                    ],
                  ));
            },
          ),
        ),
      ),
    );
  }
}
