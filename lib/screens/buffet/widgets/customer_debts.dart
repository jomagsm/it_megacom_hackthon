import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';

class CustomerDebts extends StatefulWidget {
  CustomerDebts({Key key}) : super(key: key);

  @override
  _CustomerDebtsState createState() => _CustomerDebtsState();
}

class _CustomerDebtsState extends State<CustomerDebts> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: AlertDialog(contentPadding: EdgeInsets.all(8), actions: [
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Долги",
                        style: AtextThemes.titleTextField,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Введите пин-код для получения информации",
                        style: AtextThemes.passwordRequired,
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  Row(children: [
                    Text(
                      "Пин-код",
                      style: AtextThemes.password,
                    ),
                  ]),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Введите пин-код',
                            hintStyle: AtextThemes.hintTextField,
                          ),
                        ),
                      ),
                      SizedBox(width: 110),
                    ],
                  ),
                  Container(height: 220, width: 450),
                ],
              ),
            ],
          ),
        ]));
  }
}