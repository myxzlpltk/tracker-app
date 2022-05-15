import 'package:flutter/material.dart';
import 'package:tracker_app/pages/landing_page.dart';
import 'package:tracker_app/pages/auth/login_page.dart';

class Routes {
  Routes._();

  static const String landing = '/';
  static const String login = '/login';
  static const String register = '/register';
}

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    /* Home */
    case Routes.landing:
      return MaterialPageRoute(builder: (_) => const LandingPage());
    case Routes.login:
      return MaterialPageRoute(builder: (_) => const LoginPage());
  }
  return null;
  //return MaterialPageRoute(
  //  builder: (_) => UndefinedPage(
  //    name: settings.name.toString(),
  //  ),
  //);
}
