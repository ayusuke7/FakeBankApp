import 'package:fake_bank/modules/nubank/routes/nu_router.dart';
import 'package:fake_bank/modules/nubank/theme/nu_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {

  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Bank',
      theme: nuTheme,
      initialRoute: nubankLoginRoute,
      onGenerateRoute: generateRoute,
    );
  }
}