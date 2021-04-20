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

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Center(child: Text('My Page!')),
//       drawer: AppDrawer(),
//     );
//   }
// }
