import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';
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
            style: TextThemes.sumfDebt,
          ),
        ),
        Text(total, style: TextThemes.sumfDebt),
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
