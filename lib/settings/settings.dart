import 'package:flutter/material.dart';
import 'package:office_test_app/display_page/listView_pagination.dart';
import 'package:office_test_app/display_page/page_accordions.dart';
import 'package:office_test_app/display_page/page_add_widget.dart';
import 'package:office_test_app/display_page/page_pull_to_refresh.dart';
import 'package:office_test_app/display_page/page_slide_to_delete.dart';
import 'package:office_test_app/display_page/paginated_data.dart';

import 'package:office_test_app/display_page/page_custom_loading.dart';
import 'package:office_test_app/display_page/page_intro_slider.dart';
import 'package:office_test_app/display_page/nav_bar_ex.dart';
import 'package:office_test_app/display_page/stepper_test.dart';
import 'package:office_test_app/settings/connection_checking.dart';
import 'package:office_test_app/settings/page_info.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
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
                    MaterialPageRoute(builder: (context) => AppInfoPages()),
                  );
                },
                child: Text('App Info')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConnectionPage()),
                  );
                },
                child: Text('Connection Page')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MainWidget()),
            //       );
            //     },
            //     child: Text('Custom Loading')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => IntroScreen()),
            //       );
            //     },
            //     child: Text('Intro Slider')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => NavBarPage()),
            //       );
            //     },
            //     child: Text('Nav Bar')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => ResponsavelProfilePage()),
            //       );
            //     },
            //     child: Text('Add Widget')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => AccordionHomePage()),
            //       );
            //     },
            //     child: Text('Accordion ')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => PullToRefresh()),
            //       );
            //     },
            //     child: Text('Pull To Refresh')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => SlideToDelete()),
            //       );
            //     },
            //     child: Text('Slide To Delete')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => StepperDemo()),
            //       );
            //     },
            //     child: Text('Stepper Demo')),
          ],
        ),
      ),
    );
  }
}
