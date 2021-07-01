import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/acolor_theme.dart';
import 'package:it_megacom_hackthon/theme/atext_theme.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AcolorPalette.authback,
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Вход",
              style: AtextThemes.title,
            ),
            SizedBox(height: 36),
            TextField(
              decoration: InputDecoration(
                hintText: "ID student",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgot password?"),
              ],
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: "Пароль",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off_outlined,
                      color: AcolorPalette.textforgot),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 66),
            ElevatedButton(
                onPressed: () {},
                /* () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen())),*/
                child: Text('Войти', style: AtextThemes.text),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(190, 50)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.only(left: 18, right: 18)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AcolorPalette.button),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(56.0),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
