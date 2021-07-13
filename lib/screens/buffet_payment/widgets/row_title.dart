import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';

class RowTitile extends StatelessWidget {
  const RowTitile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "Наименование",
            textAlign: TextAlign.center,
            style: TextThemes.hintTextField,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Кол-во",
            textAlign: TextAlign.center,
            style: TextThemes.hintTextField,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Цена",
            textAlign: TextAlign.center,
            style: TextThemes.hintTextField,
          ),
        ),
      ],
    );
  }
}
