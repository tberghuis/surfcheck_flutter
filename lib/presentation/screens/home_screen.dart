import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surfcheck'),
      ),
      body: Center(child: Text('home screen')),
      drawer: AppDrawer(),
    );
  }
}
