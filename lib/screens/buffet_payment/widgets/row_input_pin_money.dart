import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/bloc/basket_bloc.dart';

class RowInputPinMoney extends StatelessWidget {
  final String mapKeyFirst;
  final String hintTextFirst;
  final String mapKeySecond;
  final String hintTextSecond;
  const RowInputPinMoney({
    Key key,
    @required this.mapKeyFirst,
    this.hintTextFirst,
    this.mapKeySecond,
    this.hintTextSecond,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container (
            height:4.51.h,
            child:TextField(
            onChanged: (_number) {
              context.read<BasketBloc>()
                ..add(BasketEvent.inputValue(value: {mapKeyFirst: _number}));
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hintTextFirst,
              hintStyle: TextThemes.hintTextField,
            ),
          ),),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container (
            height:4.51.h,
            child:TextField(
            onChanged: (_value) {
              context.read<BasketBloc>()
                ..add(BasketEvent.inputValue(value: {mapKeySecond: _value}));
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hintTextSecond,
              hintStyle: TextThemes.hintTextField,
            ),
          ),)
        ),
      ],
    );
  }
}
