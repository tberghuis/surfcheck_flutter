import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(VideoApp());

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://cams.cdn-surfline.com/cdn-au/au-lennoxhead/playlist.m3u8')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        //
        //

        _controller.play();

        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
            MaterialButton(
              onPressed: () {
                _controller = VideoPlayerController.network(
                    'https://cams.cdn-surfline.com/cdn-au/au-thepassoverview/playlist.m3u8')
                  ..initialize().then((_) {
                    _controller.play();
                    setState(() {});
                  });
              },
              child: Text("button1"),
              color: Colors.greenAccent,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
