import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:flutter/material.dart';

class CalenderPage extends StatefulWidget {
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  var selectedDate;
  DateTime? selectedDateTime;
  @override
  void initState() {
    selectedDateTime = DateTime.now();
    print('1 = $selectedDateTime');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Horizontal Calender Example"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedDate = DateTime.now();
                    print('2 = $selectedDate');
                  });
                },
                child: Text('Home')),
            Container(
              height: 100,
              child: AnimatedHorizontalCalendar(
                  tableCalenderIcon: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  date: selectedDateTime,
                  textColor: Colors.black45,
                  backgroundColor: Colors.white,
                  tableCalenderThemeData: ThemeData.light().copyWith(
                    primaryColor: Colors.green,
                    accentColor: Colors.red,
                    colorScheme: ColorScheme.light(primary: Colors.green),
                    buttonTheme:
                        ButtonThemeData(textTheme: ButtonTextTheme.primary),
                  ),
                  selectedColor: Colors.redAccent,
                  onDateSelected: (date) {
                    selectedDate = date;
                    print('3 = $selectedDate');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
