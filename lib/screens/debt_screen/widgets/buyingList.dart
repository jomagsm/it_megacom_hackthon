import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_model.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/screens/debt_screen/widgets/utils.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';

class BuyingList extends StatelessWidget {
  final data;
  const BuyingList({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Buying> buyingList = data.buyingList;
    return Column(
      children: [
        SizedBox(
          height: 1.75.h,
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: getDataTableColumn(
                  [S.of(context).name, S.of(context).date, S.of(context).debt]),
              rows: getDataTableRows(buyingList),
            ),
          ),
        ),
        SizedBox(
          height: 1.61.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).total, style: AtextThemes.sumfDebt),
            Text("20 c"),
          ],
        ),
        SizedBox(
          height: 5.12.h,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).pay,
              style: AtextThemes.titleTextField,
            )),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: getDataTableColumn([
                S.of(context).summPay,
                S.of(context).debt,
                S.of(context).change
              ]),
              rows: [
                DataRow(cells: [
                  DataCell(
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: S.of(context).summPay,
                        hintStyle: AtextThemes.hintTextField,
                      ),
                    ),
                  )
                ])
              ],
            ),
          ),
        ),
      ],
    );
  }
}
