import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';

class ProductsListGrid extends StatefulWidget {
  ProductsListGrid({Key key}) : super(key: key);

  @override
  _ProductsListGridState createState() => _ProductsListGridState();
}

class _ProductsListGridState extends State<ProductsListGrid> {
  List<Product> productList = getAllProduct();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(24),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
          itemBuilder: (_, index) {
            return InkWell(
                child: Stack(
              children: [
                Container(
                  // height: 150,

                  width: MediaQuery.of(context).size.width / 2,
                  // height: MediaQuery.of(context).size.height / 5 - 57,
                  // width: MediaQuery.of(context).orientation ==
                  //         Orientation.landscape
                  //     ? MediaQuery.of(context).size.width / 5
                  //     : MediaQuery.of(context).size.width / 2,
                  // height: MediaQuery.of(context).orientation ==
                  //         Orientation.landscape
                  //     ? MediaQuery.of(context).size.width / 5 - 57
                  //     : MediaQuery.of(context).size.height / 2 - 57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      image: DecorationImage(
                        image: NetworkImage(productList[index].avatar),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorPalette.productsCardName,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Text(
                      productList[index].name,
                      textAlign: TextAlign.left,
                      style: TextThemes.productsName,
                    ),
                  ),
                )),
                Positioned(
                    child: CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorPalette.productsCardCirculeAvatar,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "${productList[index].price}",
                      style: TextThemes.productsPrice,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'C',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 8,
                              color: Colors.white),
                        ),
                        TextSpan(
                          text: '/шт',
                          // style: TextThemes.productsPrice,
                        ),
                      ],
                    ),
                  ),
                  // child: Text("${productList[index].price}/"),
                ))
              ],
            ));
          },
        ),
      ),
    );
  }
}
