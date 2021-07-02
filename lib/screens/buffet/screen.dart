import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';

import 'widgets/custom_app_bar.dart';

class BuffetPage extends StatefulWidget {
  final List<Product> productList = getAllProduct();
  BuffetPage({Key key}) : super(key: key);

  @override
  _BuffetPageState createState() => _BuffetPageState();
}

class _BuffetPageState extends State<BuffetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 280,
      ),
    );
  }
}
