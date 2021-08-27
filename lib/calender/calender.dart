import 'package:flutter/material.dart';
import 'package:office_test_app/calender/date_picker_calender.dart';
import 'package:office_test_app/calender/page_hori_calender.dart';
import 'package:office_test_app/calender/table_calender/table_calender.dart';
import 'package:office_test_app/calender/timeline_calender.dart';

class CalenderHome extends StatelessWidget {
  const CalenderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender Home'),
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
                    MaterialPageRoute(builder: (context) => CalenderPage()),
                  );
                },
                child: Text('Calender Horizontal')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DPCalender()),
                  );
                },
                child: Text('Calender Date_Picker')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimelineCalender()),
                  );
                },
                child: Text('Calender Timeline')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TableCalender()),
                  );
                },
                child: Text('Table Calender ')),
          ],
        ),
      ),
    );
  }
}
