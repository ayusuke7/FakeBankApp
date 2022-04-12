import 'package:fake_bank/routing/route_names.dart';
import 'package:fake_bank/routing/router.dart';
import 'package:fake_bank/themes/nubank_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Bank',
      theme: nubankTheme,
      onGenerateRoute: generateRoute,
      initialRoute: nubankLoginRoute,
    );
  }
}