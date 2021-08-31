import 'package:flutter/material.dart';
import 'package:office_test_app/video/page_chewie_player.dart';
import 'package:office_test_app/video/page_video_player_raw.dart';
import 'package:office_test_app/video/video_player/asset_player.dart';
import 'package:office_test_app/video/video_player/home_video_player.dart';
import 'package:office_test_app/video/video_player/network_player.dart';
import 'package:office_test_app/video/video_player/widget_video_player.dart';

class VideoPlayerHomePage extends StatefulWidget {
  VideoPlayerHomePage({Key? key}) : super(key: key);

  @override
  _VideoPlayerHomePageState createState() => _VideoPlayerHomePageState();
}

class _VideoPlayerHomePageState extends State<VideoPlayerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player Home'),
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
                    MaterialPageRoute(builder: (context) => HomeVideoPlayer()),
                  );
                },
                child: Text('Video Player Custom')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChewieHomePage()),
                  );
                },
                child: Text('Chewie Chewie')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoPlayerPage()),
                  );
                },
                child: Text('Video Player Raw')),
          ],
        ),
      ),
    );
  }
}
