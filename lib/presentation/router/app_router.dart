import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      default:
        // todo 404... or throw error
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
    }
  }
}
