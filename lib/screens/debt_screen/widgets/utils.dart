import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:it_megacom_hackthon/data/network/models/debt_models/user_debt.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:it_megacom_hackthon/theme/text_theme.dart';

getDataTableColumn(List<String> labelName) {
  List<DataColumn> column = [];
  for (var name in labelName) {
    column.add(DataColumn(
      label: Text(
        name,
        style: TextThemes.titleListProduct ,
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
        DataCell(Text(i.id.toString(),style: TextThemes.listDebt)),
        DataCell(Text(i.addDate,style: TextThemes.listDebt)),
        DataCell(Row(
          children: [
            Text("${i.debt.toString()}",style: TextThemes.listDebt),
            Text('с',
           style: GoogleFonts.lato(
          textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: ColorPalette.textforgot,
              decoration: TextDecoration.underline))),],),),]),
    );
  }
  return row;
}

// getDataTableCellText(List<BuyingProduct> buyingProductList) {
//   String name = '';
//   for (var i in buyingProductList) {
//     name += '${i.product.name}\n';
//   }
//   return name;
// }
