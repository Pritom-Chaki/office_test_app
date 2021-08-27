import 'package:flutter/material.dart';
import 'package:office_test_app/calender/date_picker_calender.dart';
import 'package:office_test_app/calender/page_hori_calender.dart';
import 'package:office_test_app/calender/table_calender/table_calender.dart';
import 'package:office_test_app/calender/timeline_calender.dart';
import 'package:office_test_app/oath2_signin/page_facebook_signin.dart';
import 'package:office_test_app/oath2_signin/page_google_signIn.dart';
import 'package:office_test_app/oath2_signin/page_google_signin2.dart';

class Oath2SignIn extends StatelessWidget {
  const Oath2SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oath2SignIn'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                child: Text('Google SignIn')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FacebookSignIn()),
                  );
                },
                child: Text('Facebook SignIn')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GoogleSignInPage2()),
                  );
                },
                child: Text('Google SignIn2')),
          ],
        ),
      ),
    );
  }
}
