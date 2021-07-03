import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/resource/images.dart';

class CustomAppBar extends PreferredSize {
  final double height;

  CustomAppBar({this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AppBar(
      flexibleSpace: Stack(children: [
        Container(
            margin: EdgeInsets.only(top: 28, bottom: 1, left: 1, right: 1),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: PageMedia.backgroundImage, fit: BoxFit.cover),
            )),
        Container(
            width: 130,
            height: 135,
            margin: EdgeInsets.only(top: 28, left: 0, right: 0),
            decoration: BoxDecoration(
              image: DecorationImage(image: PageMedia.itlogoBack),
            )),
        Container(
            width: 100,
            height: 110,
            margin: EdgeInsets.only(top: 37, left: 12, right: 0),
            decoration: BoxDecoration(
              image: DecorationImage(image: PageMedia.itLogo),
            )),
        Container(
            margin: EdgeInsets.only(top: 39, left: 357, right: 0),
            child: InkWell(
                onTap: () => print('Wallet'),
                child: Image.asset(
                  "assets/images/Vector.png",
                  width: 22,
                )))
      ]),
    ));
  }
}


// class AppBarCustom extends StatelessWidget {
//   const AppBarCustom({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar();
//   }

// AppBar(
//           iconTheme: IconThemeData(color: Colors.black),
//           elevation: 0,
//           backgroundColor: Colors.white,
//           title: Text("Mega Buffet", style: TextStyle(color: Colors.black)),
//           centerTitle: true,
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(
//                 Icons.shopping_cart,
//                 color: Colors.black,
//               ),
//               onPressed: () {
//                 print("not. Clicked");
//               },
//             )
//           ]),


// drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.green,
//               ),
//               accountEmail: Text("ID number"),
//               accountName: Text("Aizhan"),
//               currentAccountPicture: CircleAvatar(
//                 child: Text("A",
//                     style: TextStyle(
//                       color: Colors.white,
//                     )),
//                 backgroundColor: Colors.black,
//               ),
//             ),
//             ListTile(
//                 leading: Icon(Icons.storefront_rounded, color: Colors.black),
//                 title: Text("Долги",
//                     style: TextStyle(
//                       color: Colors.black,
//                     )),
//                 onTap: () {
//                   print("Долг");
//                 }),
//             ListTile(
//               leading: Icon(Icons.stars, color: Colors.black),
//               title: Text("Аккаунт",
//                   style: TextStyle(
//                     color: Colors.black,
//                   )),
//               onTap: () {
//                 print("Аккаунт");
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.flag, color: Colors.black),
//               title: Text("Настройки",
//                   style: TextStyle(
//                     color: Colors.black,
//                   )),
//               onTap: () {
//                 print("Наи");
//               },
//             ),
//           ],
//         ),
//       ),
//       ),