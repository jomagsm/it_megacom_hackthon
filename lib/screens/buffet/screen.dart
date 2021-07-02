import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';

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
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Mega Buffet", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                print("not. Clicked");
              },
            )
          ]),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              accountEmail: Text("ID number"),
              accountName: Text("Aizhan"),
              currentAccountPicture: CircleAvatar(
                child: Text("A",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                backgroundColor: Colors.black,
              ),
            ),
            ListTile(
                leading: Icon(Icons.storefront_rounded, color: Colors.black),
                title: Text("Долги",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                onTap: () {
                  print("Долг");
                }),
            ListTile(
              leading: Icon(Icons.stars, color: Colors.black),
              title: Text("Аккаунт",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              onTap: () {
                print("Аккаунт");
              },
            ),
            ListTile(
              leading: Icon(Icons.flag, color: Colors.black),
              title: Text("Настройки",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              onTap: () {
                print("Настройки");
              },
            ),
          ],
        ),
      ),
    );
  }
}
