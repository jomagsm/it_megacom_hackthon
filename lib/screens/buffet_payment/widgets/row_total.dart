import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';
import 'package:sizer/sizer.dart';

class RowTotal extends StatelessWidget {
  final String total;
  const RowTotal({Key key, @required this.total}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "Итого",
            style: AtextThemes.sumfDebt,
          ),
        ),
        Text(total, style: AtextThemes.sumfDebt),
        Text('с',
            style: TextStyle(
              fontSize: 8.0.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.underline,
            )),
      ],
    );
  }
}
