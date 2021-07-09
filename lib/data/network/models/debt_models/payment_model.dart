// To parse this JSON data, do
//
//     final payment = paymentFromJson(jsonString);

import 'dart:convert';

Payment paymentFromJson(String str) => Payment.fromJson(json.decode(str));

String paymentToJson(Payment data) => json.encode(data.toJson());

class Payment {
  Payment({
    this.change,
    this.debt,
    this.payment,
  });

  final double change;
  final double debt;
  final double payment;

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        change: json["change"],
        debt: json["debt"],
        payment: json["payment"],
      );

  Map<String, dynamic> toJson() => {
        "change": change,
        "debt": debt,
        "payment": payment,
      };
}
