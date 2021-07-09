import 'dart:convert';

UserDebt userDebtFromJson(String str) => UserDebt.fromJson(json.decode(str));

String userDebtToJson(UserDebt data) => json.encode(data.toJson());

class UserDebt {
  UserDebt({
    this.pinDto,
    this.operationReports,
  });

  final PinDto pinDto;
  final List<OperationReport> operationReports;

  factory UserDebt.fromJson(Map<String, dynamic> json) => UserDebt(
        pinDto: PinDto.fromJson(json["pinDto"]),
        operationReports: List<OperationReport>.from(
            json["operationReports"].map((x) => OperationReport.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pinDto": pinDto.toJson(),
        "operationReports":
            List<dynamic>.from(operationReports.map((x) => x.toJson())),
      };
}

class OperationReport {
  OperationReport({
    this.id,
    this.addDate,
    this.status,
    this.total,
    this.debt,
  });

  final int id;
  final String addDate;
  final String status;
  final int total;
  final int debt;

  factory OperationReport.fromJson(Map<String, dynamic> json) =>
      OperationReport(
        id: json["id"],
        addDate: json["addDate"],
        status: json["status"],
        total: json["total"],
        debt: json["debt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "addDate": addDate,
        "status": status,
        "total": total,
        "debt": debt,
      };
}

class PinDto {
  PinDto({
    this.pin,
    this.debt,
  });

  final String pin;
  final int debt;

  factory PinDto.fromJson(Map<String, dynamic> json) => PinDto(
        pin: json["pin"],
        debt: json["debt"],
      );

  Map<String, dynamic> toJson() => {
        "pin": pin,
        "debt": debt,
      };
}
