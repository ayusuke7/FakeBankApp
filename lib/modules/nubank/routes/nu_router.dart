import 'package:fake_bank/core/routing/fade_router.dart';
import 'package:fake_bank/modules/nubank/pages/nu_home_page.dart';
import 'package:fake_bank/modules/nubank/pages/nu_login_page.dart';
import 'package:flutter/material.dart';

const String nubankLoginRoute = 'login';
const String nubankHomeRoute = 'home';

Map<String, Widget> _nubankRoutes = {
  nubankLoginRoute: const NubankLoginPage(),
  nubankHomeRoute: const NubankHomePage(),
};

Route<dynamic> generateRoute(RouteSettings settings) {
  Widget child = _nubankRoutes[settings.name] ?? Container();
  
  PageRoute fadeRouter = FadeRouter(
    child: child, 
    routeName: settings.name!
  );

  return fadeRouter;
}