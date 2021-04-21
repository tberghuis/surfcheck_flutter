import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/video_stream.dart';
import '../../constants/enums.dart';

class CamScreen extends StatelessWidget {
  final Cam cam;

  const CamScreen(this.cam);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surfcheck'),
      ),
      // i don't get why this needs null check?
      body: VideoStream(cam.url),
      drawer: AppDrawer(),
    );
  }
}
