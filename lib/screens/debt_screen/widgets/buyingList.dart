import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          height: 200,
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
         mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            Text(S.of(context).total, style: TextThemes.titleListProduct),
            Row (
              children: [
            Text("${data.userDebt.pinDto.debt}",style: TextThemes.titleListProduct),
            Text('с',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: ColorPalette.textforgot,
                        decoration: TextDecoration.underline))),],),
          ],
        ),
        SizedBox(
          height: 2.35.h,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).pay,
              style: TextThemes.titlePage ,
            )),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(S.of(context).summPay,style: TextThemes.titleTextField ),
          Text( S.of(context).debt,style: TextThemes.titleTextField),
        ],),
        SizedBox(height: 5),
 Row (mainAxisAlignment:MainAxisAlignment.spaceBetween,
   children: [
 Expanded(child: Container (
     height:4.51.h,
     child: TextField(
    keyboardType: TextInputType.number,
    onChanged: (value) {
      if (value != '') {
        _paymentAmount = double.parse(value);
      }
    },
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black )),
      border: OutlineInputBorder(),
      hintText: S.of(context).inputSum ,
      hintStyle: TextThemes.hintTextField,
    ),)),),
     SizedBox(width: 10),
   Expanded(child: Container (
     height:4.51.h,
     child: TextField(
    keyboardType: TextInputType.number,
    onChanged: (value) {
    if (value != '') {
    _debt = double.parse(value);
    }
    },
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black )),
    border: OutlineInputBorder(),
    hintText: S.of(context).sumDebt ,
    hintStyle: TextThemes.hintTextField,
    ),),),)
],),
SizedBox(height: 7),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(S.of(context).change,style:TextThemes.titleTextField ),
          ],),
        SizedBox(height: 5),
        Row (mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Container (
    height:4.51.h,
    child: TextField(
    keyboardType: TextInputType.number,
    onChanged: (value) {
    if (value != '') {
    _change = double.parse(value);
    }
    },
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black )),
    border: OutlineInputBorder(),
    hintText: S.of(context).sumDebt ,
    hintStyle: TextThemes.hintTextField,
    ),),),),
            SizedBox(width: 10),
            Expanded(
             child: Container (
    height:4.51.h,
    child:TextButton(
              child: Text(S.of(context).payment,style: TextStyle(
    fontSize: 11.0,fontWeight: FontWeight.normal)),
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
            ),),),
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
