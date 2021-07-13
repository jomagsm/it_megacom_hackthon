import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';

class RowTitile extends StatelessWidget {
  const RowTitile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            S.of(context).name,
           textAlign: TextAlign.left,
            style: TextThemes.hintTextField,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            S.of(context).amount,
           textAlign: TextAlign.center,
            style: TextThemes.hintTextField,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            S.of(context).price ,
           textAlign: TextAlign.right ,
            style: TextThemes.hintTextField,
          ),
        ),
      ],
    );
  }
}
