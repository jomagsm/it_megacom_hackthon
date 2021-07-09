import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/debt_models/user_debt.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';

getDataTableColumn(List<String> labelName) {
  List<DataColumn> column = [];
  for (var name in labelName) {
    column.add(DataColumn(
      label: Text(
        name,
        style: AtextThemes.hintTextField,
      ),
    ));
  }
  return column;
}

getDataTableRows(List<OperationReport> operationList) {
  List<DataRow> row = [];
  for (var i in operationList) {
    row.add(
      DataRow(cells: [
        DataCell(Text(i.id.toString())),
        DataCell(Text(i.addDate)),
        DataCell(Text("${i.debt.toString()}c")),
      ]),
    );
  }
  return row;
}

getDataTableCellText(List<BuyingProduct> buyingProductList) {
  String name = '';
  for (var i in buyingProductList) {
    name += '${i.product.name}\n';
  }
  return name;
}
