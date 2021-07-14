import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_megacom_hackthon/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/buffet/screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'It Megacom Buffet',
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ProductsListGrid(),
        );
      });
    });
  }
}
