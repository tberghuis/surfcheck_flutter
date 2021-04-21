import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoStream extends StatefulWidget {
  final String camUrl;

  VideoStream(this.camUrl);

  @override
  _VideoStreamState createState() => _VideoStreamState();
}

class _VideoStreamState extends State<VideoStream> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.camUrl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
