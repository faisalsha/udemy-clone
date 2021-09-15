import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool isLooping;
  VideoPlayer({this.isLooping, this.videoPlayerController});
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  ChewieController chewieController;

  @override
  void initState() {
    chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        looping: widget.isLooping,
        aspectRatio: 16 / 9,
        autoInitialize: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(controller: chewieController),
    );
  }
}

class VideoDisplay extends StatefulWidget {
  final String videoUrl;

  const VideoDisplay({Key key, this.videoUrl}) : super(key: key);

  @override
  _VideoDisplayState createState() => _VideoDisplayState();
}

class _VideoDisplayState extends State<VideoDisplay> {
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(
      isLooping: true,
      videoPlayerController: VideoPlayerController.network(widget.videoUrl),
    );
  }
}
