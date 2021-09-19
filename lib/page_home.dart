import 'package:flutter/material.dart';
import 'package:office_test_app/calender/calender.dart';
import 'package:office_test_app/display_page/display_page.dart';
import 'package:office_test_app/oath2_signin/oath2_signin.dart';
import 'package:office_test_app/settings/page_info.dart';
import 'package:office_test_app/page_otp_sms.dart';
import 'package:office_test_app/settings/settings.dart';
import 'package:office_test_app/testing/time_picker_calender.dart';
import 'package:office_test_app/video/page_video_player_home.dart';

import 'sqflite/sql_main.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    MaterialPageRoute(builder: (context) => DisplayPage()),
                  );
                },
                child: Text('Display Page')),
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
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                child: Text('Settings Pages')),
            SizedBox(
              width: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SQLMain()),
                  );
                },
                child: Text('SQL CURD')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TimePickerCalender()),
                  );
                },
                child: Text('Time Picker Calender')),
          ],
        ),
      ),
    );
  }
}
