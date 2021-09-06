import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerCalender extends StatefulWidget {
  TimePickerCalender({Key? key}) : super(key: key);

  @override
  _TimePickerCalenderState createState() => _TimePickerCalenderState();
}

class _TimePickerCalenderState extends State<TimePickerCalender> {
  DateTime? _initialDate;
  DateTime? selectDate;
  bool? isSelected;
  @override
  void initState() {
    super.initState();
    _resetSelectedDate(context);
    // _resetSelectedDate();
  }

  Future<void> _calender(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _initialDate!,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
      helpText: 'Select Event date',
      cancelText: 'Not now',
      confirmText: 'Confirm',
    );
    if (picked != null && picked != _initialDate)
      setState(() {
        _initialDate = picked;
        selectDate = picked;
      });
  }

  Future<void> _resetSelectedDate(BuildContext context) async {
    isSelected = false;
    final DateTime? pickedDate = await DateTime.now();

    if (pickedDate != null && pickedDate != _initialDate)
      setState(() {
        _initialDate = pickedDate;
        selectDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 0.0),
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildDateShow(),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        _resetSelectedDate(context);
                        //_resetSelectedDate();
                      },
                      icon: Icon(Icons.restart_alt_outlined)),
                  Expanded(child: _buildDateWidget()),
                  IconButton(
                      onPressed: () {
                        _calender(context);
                      },
                      icon: Icon(Icons.date_range)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildDateWidget() {
    return Container(
        alignment: Alignment.center,
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day - 4)),
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day - 3)),
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day - 2)),
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day - 1)),
            _buildWidgetDateCard(datetime: _initialDate),
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day + 1)),
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day + 2)),
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day + 3)),
            _buildWidgetDateCard(
                datetime: DateTime(_initialDate!.year, _initialDate!.month,
                    _initialDate!.day + 4)),
          ],
        ));
  }

  _buildWidgetDateCard({@required DateTime? datetime}) {
    print(datetime);
    isSelected = datetime == selectDate;
    return InkWell(
      onTap: () {
        setState(() {
          selectDate = datetime;
          _initialDate = selectDate;
        });
      },
      child: Card(
        elevation: isSelected! ? 5.0 : 1.0,
        color: isSelected! ? Colors.red : Colors.green,
        child: Container(
          alignment: Alignment.center,
          height: isSelected! ? 63 : 58,
          width: isSelected! ? 48 : 43,
          padding: EdgeInsets.symmetric(vertical: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('MMM').format(datetime!),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: isSelected! ? Colors.white : Colors.black),
              ),
              Text(
                DateFormat('dd').format(datetime),
                style: TextStyle(
                    fontSize: isSelected! ? 16 : 14,
                    fontWeight: FontWeight.bold,
                    color: isSelected! ? Colors.white : Colors.black),
              ),
              Text(
                DateFormat('EEE').format(datetime),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: isSelected! ? Colors.white : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildDateShow() {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 170,
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Text('${selectDate}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
    );
  }
}
