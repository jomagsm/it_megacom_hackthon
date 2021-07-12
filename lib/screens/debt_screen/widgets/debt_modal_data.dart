import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/resource/svg_icons.dart';
import 'package:it_megacom_hackthon/screens/debt_screen/debt_bloc/debt_bloc.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';
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
      height: 51.0.h,
      child: AlertDialog(
        actions: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.of(context).debts, style: TextThemes.paymentTitle),
              IconButton(
                icon: SvgPicture.asset(SvgIconCollect.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).inputPinInfo,
              style: AtextThemes.passwordRequired,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).pin,
              style: AtextThemes.password,
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
             // width: 22.51.w,
              height: 6.0.h,
              child: TextField(
                onSubmitted: (value) {
                  context
                      .read<DebtBloc>()
                      .add(DebtEvent.inputPin(inputPinValue: value));
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 3,left: 6),
                  border: OutlineInputBorder(),
                  hintText: S.of(context).inputPin,
                  hintStyle: AtextThemes.hintTextField,
                ),
              ),

            ),
            data.authUser
                ? BuyingList(
                    data: data,
                  )
                : SizedBox(),

          ],

        ),
          SizedBox(height: 530),
    ],),
    );
  }
}
