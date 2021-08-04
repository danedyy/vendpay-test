import 'package:flutter/material.dart';
import 'package:vendpay/constants.dart';
import 'package:vendpay/home/vend_pay_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VEND PAY',
        theme: ThemeData(
            accentColor: ACCENT_COLOR,
            scaffoldBackgroundColor: SCAFFOLD_COLOR,
            fontFamily: 'CircularStd',
            cardTheme: CardTheme(elevation: 0),
            appBarTheme: AppBarTheme(
              backgroundColor: SCAFFOLD_COLOR,
              elevation: 0,
              centerTitle: true,
            )),
        home: VendPayHome());
  }
}
