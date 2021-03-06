import 'package:flutter/material.dart';
import 'package:office_test_app/video/video_player/asset_player.dart';
import 'package:office_test_app/video/video_player/network_player.dart';
import 'package:office_test_app/video/video_player/widget_video_player.dart';

class HomeVideoPlayer extends StatefulWidget {
  HomeVideoPlayer({Key? key}) : super(key: key);

  @override
  _HomeVideoPlayerState createState() => _HomeVideoPlayerState();
}

class _HomeVideoPlayerState extends State<HomeVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Select Your Option',
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AssetPlayerWidget()),
                  );
                },
                child: Text('Asset Player')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NetworkPlayerWidget()),
                  );
                },
                child: Text('Video Player')),
          ],
        ),
      ),
    );
  }
}
