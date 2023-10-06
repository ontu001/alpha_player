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
        setState(() {});
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 25, 46, 56),
                      )),
                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                      child: _controller.value.isPlaying
                          ? Icon(Icons.pause_circle)
                          : Icon(Icons.play_circle)),
                ),
              ],
            )
          : Container(
            child: Center(child: Text("Not Found")),
          ),
    );
  }
}
