import 'package:flutter/material.dart';
import 'package:hygeia_revamp/routes/routes.dart';
import 'package:hygeia_revamp/screens/login/login_screen.dart';

import '../screens/error/error_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
