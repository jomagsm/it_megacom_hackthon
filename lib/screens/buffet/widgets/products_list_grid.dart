import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/custom_app_bar.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:badges/badges.dart';

class ProductsListGrid extends StatefulWidget {
  ProductsListGrid({Key key}) : super(key: key);

  @override
  _ProductsListGridState createState() => _ProductsListGridState();
}

class _ProductsListGridState extends State<ProductsListGrid> {
  List<Product> productList = getAllProduct();
  int basketValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: InkWell(
        //   child: Badge(
        // shape: BadgeShape.circle,
        // badgeContent: Text('300'),
        // child: Container(
        //   width: 200,
        //   height: 200,
        //   decoration: BoxDecoration(
        //       color: Colors.blue,
        //       image: DecorationImage(
        //           image: AssetImage('assets/images/basket background.png'),
        //           fit: BoxFit.cover)),
        //   child: Container(
        //     child: Center(
        //         widthFactor: 40,
        //         heightFactor: 40,
        //         child: Image.asset(
        //           'assets/images/shopping-basket 2.png',
        //         )),
        //   ),
        // ),
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
                    borderRadius: basketValue == 0
                        ? BorderRadius.all(Radius.circular(50))
                        : new BorderRadius.all(Radius.elliptical(100, 50)),
                  ),
                  child: Container(
                    margin: basketValue == 0
                        ? const EdgeInsets.symmetric(horizontal: 3, vertical: 0)
                        : const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 3),
                    child: basketValue == 0
                        ? Text('0', style: TextThemes.productsPrice)
                        : Text('$basketValue c',
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
            itemCount: productList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (_, index) {
              return InkWell(
                  onDoubleTap: () {
                    print(productList[index].id);
                  },
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
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorPalette.productsCardName,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              productList[index].name,
                              textAlign: TextAlign.left,
                              style: TextThemes.productsName,
                            ),
                          ),
                        ),
                      )),
                      Positioned(
                          child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20, right: 10),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                ColorPalette.productsCardCirculeAvatar,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ));
            },
          ),
        ),
      ),
    );
  }
}
