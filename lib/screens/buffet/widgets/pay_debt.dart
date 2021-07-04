import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';

class PayDebt extends StatefulWidget {
  PayDebt({Key key}) : super(key: key);

  @override
  _PayDebtState createState() => _PayDebtState();
}

class _PayDebtState extends State<PayDebt> {
  final _number = TextEditingController();
  bool _validate = false;

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
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 5),
              Text(
                "Наименование",
                style: AtextThemes.hintTextField,
              ),
              SizedBox(width: 70),
              Text(
                "Дата",
                style: AtextThemes.hintTextField,
              ),
              SizedBox(width: 30),
              Text(
                "Долг",
                style: AtextThemes.hintTextField,
              ),
            ],
          ),
          Container(
              width: 450,
              height: 200,
              child: ListView.builder(itemBuilder: (_, index) {
                return (Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Пирожки с картошкой",
                          style: AtextThemes.listDebt,
                        ),
                        SizedBox(width: 29),
                        Text(
                          "12.05.2021",
                          style: AtextThemes.listDebt,
                        ),
                        SizedBox(
                          width: 23,
                        ),
                        Text('50', style: AtextThemes.listDebt),
                        Text('с',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ))),
                      ],
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(
                        height: 1,
                        width: 285.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 6),
                  ],
                ));
              })),
          //////
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Итого",
                style: AtextThemes.sumfDebt,
              ),
              SizedBox(width: 225),
              Text('50', style: AtextThemes.sumfDebt),
              Text('с',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  )),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Оплата",
                style: AtextThemes.titleTextField,
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Сумма оплаты", style: AtextThemes.password),
            Text("Долг", style: AtextThemes.password),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  onSubmitted: (_number) {
                    if (_number.length == 4) {
                      setState(() {
                        _validate = true;
                      });
                    }
                    print(_number);
                  },
                  controller: _number,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Сумма оплаты',
                    hintStyle: AtextThemes.hintTextField,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _number,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Долг',
                    hintStyle: AtextThemes.hintTextField,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Сдача", style: AtextThemes.password),
          ]),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _number,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Сдача',
                    hintStyle: AtextThemes.hintTextField,
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                  width: 145,
                  height: 59,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: _validate
                              ? MaterialStateProperty.all<Color>(Colors.black)
                              : MaterialStateProperty.all<Color>(Colors.grey),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      child: Text(
                        'Оплатить',
                        style: TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                      onPressed: () {})),
            ],
          ),
          SizedBox(height: 10),
        ]));
  }
}