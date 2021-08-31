import 'package:flutter/material.dart';
import 'package:office_test_app/oath2_signin/page_facebook_signin.dart';
import 'package:office_test_app/oath2_signin/page_google_signIn.dart';
import 'package:office_test_app/page_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Test Site'),
    );
  }
}
