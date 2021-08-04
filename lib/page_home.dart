import 'package:flutter/material.dart';
import 'package:office_test_app/page_chewie_player.dart';
import 'package:office_test_app/page_google_signIn.dart';
import 'package:office_test_app/page_video_player.dart';
import 'package:office_test_app/video_player/home_video_player.dart';
import 'package:share/share.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _shareHobe() {
    Share.share('check out my website https://example.com',
        subject: 'Look what I made!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                child: Text('Google Signin')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoPlayerPage()),
                  );
                },
                child: Text('Video Player Raw')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeVideoPlayer()),
                  );
                },
                child: Text('Home Video Player')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChewieHomePage()),
                  );
                },
                child: Text('Chewie Chewie')),

          ],
        ),
      ),

    );
  }
}
