import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ProgressBar extends StatefulWidget {
  ProgressBar({Key? key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  int? currentStep = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Linear Progress Bar"),
      ),
      body: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              value: 0.5,
              minHeight: 10,
            ),
            SizedBox(
              height: 40,
            ),
            LinearProgressBar(
              maxSteps: 5,
              currentStep: currentStep,
              progressColor: Colors.red,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
              semanticsLabel: "Label",
              semanticsValue: "Value",
              minHeight: 10,
            ),
          ],
        ),
      ),
    );
  }
}
