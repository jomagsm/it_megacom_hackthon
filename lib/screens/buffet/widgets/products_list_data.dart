import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_megacom_hackthon/screens/buffet/buffet_bloc/buffet_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/custom_app_bar.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/utils.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';

class ProductsListData extends StatelessWidget {
  final Function selectProductEvent;
  dynamic data;
  // bool productSelectCheck = false;
  ProductsListData({Key key, @required this.data, this.selectProductEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: InkWell(
        onTap: (){context.read<BuffetBloc>().add(BuffetEvent.selectBasket());},
        child: Stack(
          children: [
            SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/basket background.png')),
            Positioned(
              top: 20,
              left: 25,
              child: SizedBox(
                  width: 45,
                  height: 45,
                  child: Image.asset(
                    'assets/images/shopping-basket 2.png',
                  )),
            ),
            Positioned(
                top: 5,
                left: 60,
                child: Container(
                  decoration: new BoxDecoration(
                    color: ColorPalette.purple,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: data.basketValue == 0
                        ? BorderRadius.all(Radius.circular(50))
                        : new BorderRadius.all(Radius.elliptical(100, 50)),
                  ),
                  child: Container(
                    margin: data.basketValue == 0
                        ? const EdgeInsets.symmetric(horizontal: 3, vertical: 0)
                        : const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 3),
                    child: data.basketValue == 0
                        ? Text('0', style: TextThemes.productsPrice)
                        : Text('${data.basketValue.toString()} c',
                            style: TextThemes.productsPrice),
                  ),
                ))
          ],
        ),
      ),
      appBar: CustomAppBar(
        height: 126,
      ),
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
                      Positioned.fill(
                          child: checkSelectedProduct(
                                  data.productsList[index].id,
                                  data.selectedProductsList)
                              ? Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorPalette.productsCardName,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        data.productsList[index].name,
                                        textAlign: TextAlign.left,
                                        style: TextThemes.productsName,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      color: ColorPalette
                                          .productsCardSelectedBackground),
                                  padding: EdgeInsets.all(32),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        child: SvgPicture.asset(
                                          'assets/icons/shopping-basket 2.svg',
                                          color: ColorPalette
                                              .productsCardSelectedBasket,
                                        ),
                                      ),
                                      Text(
                                          "+${data.productsList[index].price.round()}",
                                          style: TextThemes.productsName)
                                    ],
                                  ),
                                )),
                      Positioned(
                          child: checkSelectedProduct(
                                  data.productsList[index].id,
                                  data.selectedProductsList)
                              ? Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(bottom: 20, right: 10),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: ColorPalette
                                          .productsCardCirculeAvatar,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "${data.productsList[index].price}",
                                          style: TextThemes.productsPrice,
                                          children: const <TextSpan>[
                                            TextSpan(
                                              text: 'C',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontSize: 8,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: '/шт',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox())
                    ],
                  ));
            },
          ),
        ),
      ),
    );
  }
}
