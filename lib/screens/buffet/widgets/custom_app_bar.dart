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
            //margin: EdgeInsets.only(top: 0, bottom: 1, left: 1, right: 1),
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
