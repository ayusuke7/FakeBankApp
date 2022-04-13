import 'package:fake_bank/core/routing/router.dart';
import 'package:fake_bank/ui/nubank/routes/routes_names.dart';
import 'package:fake_bank/ui/nubank/theme/colors.dart';
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
      onGenerateRoute: generateRoute,
      initialRoute: nubankLoginRoute,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primaryColorDark: kPrimaryColorDark,
        fontFamily: 'Graphik',
      ),
    );
  }
}