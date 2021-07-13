import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/data/network/models/debt_models/user_debt.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/screens/debt_screen/debt_bloc/debt_bloc.dart';
import 'package:it_megacom_hackthon/screens/debt_screen/widgets/utils.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';

class BuyingList extends StatelessWidget {
  final data;
  const BuyingList({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserDebt userDebt = data.userDebt;
    double _paymentAmount = 0;
    double _debt = 0;
    double _change = 0;

    return Column(
      children: [
        SizedBox(
          height: 1.75.h,
        ),
        Container (
          height: 230,
        child:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: getDataTableColumn(
                  [S.of(context).id, S.of(context).date, S.of(context).debt]),
              rows: getDataTableRows(userDebt.operationReports),
            ),
          ),
        ),),
        SizedBox(
          height: 1.61.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).total, style: TextThemes.sumfDebt),
            Text("${data.userDebt.pinDto.debt} c"),
          ],
        ),
        SizedBox(
          height: 5.12.h,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).pay,
              style: TextThemes.titleTextField,
            )),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(S.of(context).summPay),
          Text( S.of(context).debt,),
        ],),
Row (),
SizedBox(height: 10),
       SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,

            child: DataTable(
              showCheckboxColumn: false,
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
                      onChanged: (value) {
                        if (value != '') {
                          _paymentAmount = double.parse(value);
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: S.of(context).summPay,
                        hintStyle: TextThemes.hintTextField,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value != '') {
                          _debt = double.parse(value);
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: S.of(context).summPay,
                        hintStyle: TextThemes.hintTextField,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value != '') {
                          _change = double.parse(value);
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: S.of(context).summPay,
                        hintStyle: TextThemes.hintTextField,
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            child: Text(S.of(context).payment),
            style: TextButton.styleFrom(
              primary: ColorPalette.white,
              backgroundColor: ColorPalette.basketColorBlack,
              onSurface: Colors.grey,
            ),
            onPressed: () {
              context
                  .read<DebtBloc>()
                  .add(DebtEvent.makePayment(payment: _paymentAmount));
            },
          ),
        )
      ],
    );
  }
}
