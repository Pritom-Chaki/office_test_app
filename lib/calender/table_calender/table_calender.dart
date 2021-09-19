import 'package:flutter/material.dart';

import 'package:office_test_app/calender/table_calender/basics_example.dart';
import 'package:office_test_app/calender/table_calender/complex_example.dart';
import 'package:office_test_app/calender/table_calender/event_example.dart';
import 'package:office_test_app/calender/table_calender/multi_example.dart';
import 'package:office_test_app/calender/table_calender/range_example.dart';

class TableCalender extends StatelessWidget {
  const TableCalender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Calender'),
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
                    MaterialPageRoute(
                        builder: (context) => TableBasicsExample()),
                  );
                },
                child: Text('Table Basics Example')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TableMultiExample()),
                  );
                },
                child: Text('Table Multi Example')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TableEventsExample()),
                  );
                },
                child: Text('Table Events Example')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TableComplexExample()),
                  );
                },
                child: Text('Table Complex Example ')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TableRangeExample()),
                  );
                },
                child: Text('Table Range Example')),
          ],
        ),
      ),
    );
  }
}
