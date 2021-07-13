import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:it_megacom_hackthon/theme/color_theme.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

openPopupNullBasket(context) {
  Alert(
      context: context,
      title: S.of(context).emptyBasket,
      content: Center(
        child: Text(S.of(context).selectProduct),
      ),
      buttons: [
        DialogButton(
          color:ColorPalette.purple,
          onPressed: () => Navigator.pop(context),
          child: Text(
            S.of(context).back,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}

openPopup(context) {
  Alert(
      context: context,
      title: "Error",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: 'Username',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
