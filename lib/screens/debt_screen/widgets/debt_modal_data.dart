import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/resource/svg_icons.dart';
import 'package:it_megacom_hackthon/screens/debt_screen/debt_bloc/debt_bloc.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';

import 'buyingList.dart';

class DebtModalData extends StatelessWidget {
  final DebtBloc bloc;
  final data;
  const DebtModalData({Key key, @required this.data, this.bloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 8.0.h,
     //width: 7.0.h,
      child: AlertDialog(
        scrollable: true,
        contentPadding: EdgeInsets.only(left: 2.77.h,right: 2.77.h,top: 1.77.h,bottom:2.77.h),
        titlePadding : EdgeInsets.only(left: 2.77.h,right: 2.77.h,top: 1.77.h),
        title:
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.of(context).debts, style: TextThemes.titlePage),
              Container(
                height: 3.75.h,
                width: 3.75.h,
             child: IconButton(
                icon: SvgPicture.asset(SvgIconCollect.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
            ],
          ),
       content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
            width: double.infinity,
             child: Text(
              S.of(context).inputPinInfo,
              style: TextThemes.passwordRequired,
            ),),
             SizedBox(
              height: 0.50.h,
            ),
            Text(
              S.of(context).pin,
              style: TextThemes.password,
            ),
            SizedBox( height: 0.65.h),
            Container(
              width: 30.51.w,
              height:4.51.h,
              child:
              data.authUser ?
                  Container(
                    padding: EdgeInsets.only(top: 9,left: 8) ,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorPalette.titleTf),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child:
                  Text(data.userDebt.pinDto.pin)
                  )
              : TextField(
                onSubmitted: (value) {
                  context
                      .read<DebtBloc>()
                      .add(DebtEvent.inputPin(inputPinValue: value));
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black )),
                  contentPadding: EdgeInsets.only(top: 3,left: 6),
                  border: OutlineInputBorder(),
                  hintText: S.of(context).inputPin,
                  hintStyle: TextThemes.hintTextField,
                ),
              ),
            ),
            data.authUser
                ? BuyingList(
                    data: data,
                  )
                : SizedBox( height: 20.0.h),
            // SizedBox(height: 200),
          ],
        ),

    ),
    );
  }
}
