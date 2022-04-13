import 'package:fake_bank/ui/nubank/pages/home_page.dart';
import 'package:fake_bank/ui/nubank/pages/login_page.dart';
import 'package:flutter/material.dart';

const String nubankLoginRoute = 'login';
const String nubankHomeRoute = 'home';

Map<String, Widget> nubankRoutes = {
  nubankLoginRoute: const NubankLoginPage(),
  nubankHomeRoute: const NubankHomePage(),
};