import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyPlayer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPlayerState();
  }
}

class MyPlayerState extends State<MyPlayer> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'))
      ..initialize().then((_) {
        setState(() {
          
        });
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Center();
  }
}
