import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/video_stream.dart';

class CamScreen extends StatelessWidget {
  final beachName;

  const CamScreen(this.beachName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surfcheck'),
      ),
      body: VideoStream(),
      drawer: AppDrawer(),
    );
  }
}
