import 'package:flutter/material.dart';
import 'package:office_test_app/video_player/widget_basic_overlay.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => controller.value.isInitialized
      ? Container(alignment: Alignment.topCenter, child: buildVideo())
      : Container(
          height: 200,
          child: Center(child: CircularProgressIndicator()),
        );

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(child: BasicOverlayWidget(controller: controller)),
          // Positioned.fill(child: AdvancedOverlayWidget(controller: controller)),
        ],
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller),
      );
}
