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
    return RefreshIndicator(
        onRefresh: () async {
          context.read<BuffetBloc>()..add(BuffetEvent.refresh());
        },
    child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: BasketButton(data: data),
      appBar: CustomAppBar(
        height: 20.5.h,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(24),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: data.productsList.length,
            gridDelegate: SizerUtil.orientation == Orientation.portrait
                ? SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8)
                : SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (_, index) {
              return Container(
                child: InkWell(
                    onTap: () {
                      context.read<BuffetBloc>().add(
                          BuffetEvent.selectedProduct(
                              productId: data.productsList[index].id));
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    data.productsList[index].picture),
                                fit: BoxFit.fill,
                              )),
                        ),
                        CardContent(data: data, index: index),
                        CardContentPrice(
                          data: data,
                          index: index,
                        ),
                      ],
                    )),
              );
            },
          ),
        ),
      ),
    ));
  }
}
