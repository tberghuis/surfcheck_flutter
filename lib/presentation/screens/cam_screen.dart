import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/video_stream.dart';
import '../../constants/maps.dart';

class CamScreen extends StatelessWidget {
  final String beachName;

  const CamScreen(this.beachName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surfcheck'),
      ),
      // i don't get why this needs null check?
      body: VideoStream(beachNameUrlMap[beachName]!),
      drawer: AppDrawer(),
    );
  }
}
