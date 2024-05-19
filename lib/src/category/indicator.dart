import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  _LoadingIndicatorState createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CircularPercentIndicator(
            animation: true,
            animationDuration: 10000,
            radius: 150,
            lineWidth: 30,
            percent: 0.8,
            progressColor: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade200,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              '${(0.8 * 100).toInt()}%',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoadingIndicator(),
  ));
}
