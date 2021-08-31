import 'package:flutter/material.dart';
import 'package:office_test_app/calender/calender.dart';
import 'package:office_test_app/nav_bar_ex.dart';

import 'package:office_test_app/oath2_signin/oath2_signin.dart';
import 'package:office_test_app/page_add_widget.dart';

import 'package:office_test_app/page_custom_loading.dart';

import 'package:office_test_app/page_info.dart';
import 'package:office_test_app/page_intro_slider.dart';
import 'package:office_test_app/page_otp_sms.dart';
import 'package:office_test_app/video/page_video_player_home.dart';
import 'package:office_test_app/video/page_video_player_raw.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _shareHobe() {
  //   Share.share('check out my website https://example.com',
  //       subject: 'Look what I made!');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Oath2SignIn()),
                  );
                },
                child: Text('Oath2 SignIn')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoPlayerHomePage()),
                  );
                },
                child: Text('All Video Player')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppInfoPages()),
                  );
                },
                child: Text('App Info Pages')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registration()),
                  );
                },
                child: Text('OTP SMS Pages')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroScreen()),
                  );
                },
                child: Text('Intro Slider')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainWidget()),
                  );
                },
                child: Text('Custom Loading')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBarPage()),
                  );
                },
                child: Text('Nav Bar')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalenderHome()),
                  );
                },
                child: Text('Calender')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResponsavelProfilePage()),
                  );
                },
                child: Text('Add Widget')),
          ],
        ),
      ),
    );
  }
}
