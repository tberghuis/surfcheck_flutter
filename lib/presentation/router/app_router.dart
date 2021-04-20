import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/cam_screen.dart';

// lets do this basic MVP without arguments

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      case '/cam/lennox':
        return MaterialPageRoute(
          builder: (_) => CamScreen('lennox'),
        );

      default:
        // todo 404... or throw error
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
    }
  }
}
