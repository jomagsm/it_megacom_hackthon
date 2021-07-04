import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/resource/svg_icons.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/list_view.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';

class PaymentModalWindow extends StatelessWidget {
  final List<BuyingProduct> buyingProduct;
  const PaymentModalWindow({Key key, @required this.buyingProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.0.h,
      child: AlertDialog(
        title: SizedBox(
          width: 75.0.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.of(context).payDetail, style: TextThemes.paymentTitle),
              IconButton(
                icon: SvgPicture.asset(SvgIconCollect.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        content: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 55),
                Text(
                  "Наименование",
                  style: AtextThemes.hintTextField,
                ),
                SizedBox(width: 64),
                Text(
                  "Кол-во",
                  style: AtextThemes.hintTextField,
                ),
                SizedBox(width: 30),
                Text(
                  "Цена",
                  style: AtextThemes.hintTextField,
                ),
              ],
            ),
            // BuyingProductListView(
            //   buyingProduct: buyingProduct,
            // ),
          ],
        ),
      ),
    );
    // return Container(
    //     color: Colors.transparent,
    //     child: AlertDialog(
    //       contentPadding: EdgeInsets.all(8),
    //       actions: [
    //         Column(children: [
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               SizedBox(height: 10),
    //               Row(
    //                 children: [
    //                   Text(
    //                     "Детали оплаты",
    //                     style: AtextThemes.titleTextField,
    //                   )
    //                 ],
    //               ),
    // Row(
    //   children: [
    //     SizedBox(width: 55),
    //     Text(
    //       "Наименование",
    //       style: AtextThemes.hintTextField,
    //     ),
    //     SizedBox(width: 64),
    //     Text(
    //       "Кол-во",
    //       style: AtextThemes.hintTextField,
    //     ),
    //     SizedBox(width: 30),
    //     Text(
    //       "Цена",
    //       style: AtextThemes.hintTextField,
    //     ),
    //   ],
    // ),
    //               //////
    //               Container(
    //                   width: 450,
    //                   height: 220,
    //                   child: ListView.builder(itemBuilder: (_, index) {
    //                     return (Column(
    //                       children: [
    //                         Row(
    //                           children: [
    //                             Container(
    //                               height: 50,
    //                               width: 50,
    //                               decoration: BoxDecoration(
    //                                 image: DecorationImage(
    //                                   image: NetworkImage(
    //                                       'https://www.svoimirykami.club/upload/iblock/d2e/d2e4a2d3eec1ace413a0afe8341d61ef.jpg'),
    //                                   fit: BoxFit.cover,
    //                                 ),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               width: 5.0,
    //                             ),
    //                             Text(
    //                               "Пирожки с картошкой",
    //                               style: AtextThemes.titleofProduct,
    //                             ),
    //                             IconButton(
    //                               icon: const Icon(Icons.minimize, size: 10),
    //                               onPressed: () {
    //                                 print("minus");
    //                               },
    //                             ),
    //                             Container(
    //                               height: 15,
    //                               width: 15,
    //                               decoration: BoxDecoration(
    //                                 border: Border.all(
    //                                   color: Colors.grey,
    //                                 ),
    //                               ),
    //                               child: Center(
    //                                 child: Text('2',
    //                                     style: AtextThemes.titleofProduct),
    //                               ),
    //                             ),
    //                             IconButton(
    //                               icon: const Icon(Icons.add, size: 10),
    //                               onPressed: () {
    //                                 print("plus");
    //                               },
    //                             ),
    //                             //SizedBox(width: 2),
    //                             Container(
    //                               height: 19,
    //                               width: 20,
    //                               child: Center(
    //                                 child: Text('50с',
    //                                     style: AtextThemes.titleofProduct),
    //                               ),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(height: 6),
    //                         Padding(
    //                           padding: EdgeInsets.symmetric(horizontal: 0.0),
    //                           child: Container(
    //                             height: 1,
    //                             width: 285.0,
    //                             color: Colors.grey,
    //                           ),
    //                         ),
    //                         SizedBox(height: 6),
    //                       ],
    //                     ));
    //                   })),
    //               //////
    //               SizedBox(height: 8),
    //               Text(
    //                 "Оплата",
    //                 style: AtextThemes.titleTextField,
    //               ),

    //               Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Text("Пин-код"),
    //                     Text("Сумма оплаты"),
    //                   ]),
    //               SizedBox(
    //                 height: 5,
    //               ),
    //               Row(
    //                 children: [
    //                   Expanded(
    //                     child: TextField(
    //                       onSubmitted: (_number) {
    //                         // if (_number.length == 4) {
    //                         //   setState(() {
    //                         //     _validate = true;
    //                         //   });
    //                         // }
    //                         // print(_number);
    //                       },
    //                       // controller: _number,
    //                       keyboardType: TextInputType.number,
    //                       decoration: InputDecoration(
    //                         border: OutlineInputBorder(),
    //                         hintText: 'Введите пин-код',
    //                         hintStyle: AtextThemes.hintTextField,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(width: 10),
    //                   Expanded(
    //                     child: TextField(
    //                       // controller: _number,
    //                       keyboardType: TextInputType.number,
    //                       decoration: InputDecoration(
    //                         border: OutlineInputBorder(),
    //                         hintText: 'Введите сумму',
    //                         hintStyle: AtextThemes.hintTextField,
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(height: 7),
    //               Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Text("Долг"),
    //                     Text("Сумма сдачи"),
    //                   ]),
    //               SizedBox(
    //                 height: 7,
    //               ),
    //               Row(
    //                 children: [
    //                   Expanded(
    //                     child: TextField(
    //                       // controller: _number,
    //                       keyboardType: TextInputType.number,
    //                       decoration: InputDecoration(
    //                         border: OutlineInputBorder(),
    //                         hintText: 'Сумма долга',
    //                         hintStyle: AtextThemes.hintTextField,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(width: 10),
    //                   Expanded(
    //                     child: TextField(
    //                       // controller: _number,
    //                       keyboardType: TextInputType.number,
    //                       decoration: InputDecoration(
    //                         border: OutlineInputBorder(),
    //                         hintText: 'Сумма сдачи',
    //                         hintStyle: AtextThemes.hintTextField,
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(height: 7),
    //               TextButton(
    //                   style: ButtonStyle(
    //                       // backgroundColor: _validate
    //                       //     ? MaterialStateProperty.all<Color>(Colors.black)
    //                       //     : MaterialStateProperty.all<Color>(Colors.grey),
    //                       foregroundColor:
    //                           MaterialStateProperty.all<Color>(Colors.white)),
    //                   child: Text(
    //                     'Оплатить',
    //                     style: TextStyle(
    //                       fontSize: 11.0,
    //                     ),
    //                   ),
    //                   onPressed: () {}),
    //             ],
    //           )
    //         ])
    //       ],
    //     ));
  }
}
