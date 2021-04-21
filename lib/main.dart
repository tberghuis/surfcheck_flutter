import 'package:flutter/material.dart';

import 'presentation/router/app_router.dart';

void main() => runApp(MyApp(
      appRouter: AppRouter(),
    ));

class MyApp extends StatelessWidget {
  final appTitle = 'Surfcheck';
  final AppRouter appRouter;

  const MyApp({
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
