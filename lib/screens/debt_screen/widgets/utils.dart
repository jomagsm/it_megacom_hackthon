import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_model.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
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

getDataTableRows(List<Buying> buyingList) {
  var dateFormat = DateFormat("yyyy-MM-dd");
  List<DataRow> row = [];
  for (var i in buyingList) {
    row.add(
      DataRow(cells: [
        DataCell(Text(getDataTableCellText(i.buyingProduct))),
        DataCell(Text(dateFormat.format(i.date))),
        DataCell(Text("${i.howMuchDebt.toString()}c")),
      ]),
    );
    return row;
  }
}

getDataTableCellText(List<BuyingProduct> buyingProductList) {
  String name = '';
  for (var i in buyingProductList) {
    name += '${i.product.name}\n';
  }
  return name;
}
