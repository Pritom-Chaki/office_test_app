import 'package:flutter/material.dart';
import 'package:office_test_app/video/video_player/widget_video_player.dart';
import 'package:video_player/video_player.dart';

class AssetPlayerWidget extends StatefulWidget {
  @override
  _AssetPlayerWidgetState createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {
  final asset = 'assets/bee.mp4';
  VideoPlayerController? controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller!.play());
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = controller!.value.volume == 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Asset Player'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              VideoPlayerWidget(controller: controller!),
              const SizedBox(height: 32),
              if (controller != null && controller!.value.isInitialized)
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: IconButton(
                    icon: Icon(
                      isMuted ? Icons.volume_mute : Icons.volume_up,
                      color: Colors.white,
                    ),
                    onPressed: () => controller!.setVolume(isMuted ? 1 : 0),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
