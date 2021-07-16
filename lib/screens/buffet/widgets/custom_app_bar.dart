import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/resource/images.dart';
import 'package:it_megacom_hackthon/screens/debt_screen/screen.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends PreferredSize {
  final double height;

  CustomAppBar({this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(9.0.h);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AppBar(
      flexibleSpace: Stack(children: [
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(
              image: PageMedia.backgroundImage, fit: BoxFit.cover),
        )),
        Container(
            width: 13.3.h,
            height: 10.35.h,
            margin: EdgeInsets.only(top: 28, left: 0, right: 0),
            decoration: BoxDecoration(
              image: DecorationImage(image: PageMedia.itlogoBack),
            )),
        Container(
            width: 10.0.h,
            height: 10.1.h,
            margin: EdgeInsets.only(top: 37, left: 12, right: 0),
            decoration: BoxDecoration(
              image: DecorationImage(image: PageMedia.itLogo),
            )),
        Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 5.0.w),
            child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return DebtModal();
                    },
                  );
                },
                child: Image.asset(
                  "assets/images/Vector.png",
                  width: 2.2.h,
                )))
      ]),
    ));
  }
}
