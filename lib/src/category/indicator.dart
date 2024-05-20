import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularIndicator extends StatefulWidget {
  @override
  _CircularIndicatorState createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(80, 80), // Adjust size here
          painter: CircularIndicatorPainter(_controller.value),
        );
      },
    );
  }
}

class CircularIndicatorPainter extends CustomPainter {
  final double progress;

  CircularIndicatorPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = 10.0 
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final Paint progressPaint = Paint()
      ..color = Colors.orange
      ..strokeWidth = 10.0 
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double radius = size.width / 2;
    final int totalSegments = 6; 
    final double segmentAngle = (2 * 3.1415927) / totalSegments;
    final double startAngle = -3.1415927 / 2;

    for (int i = 0; i < totalSegments; i++) {
      final double sweepAngle = segmentAngle * 0.75;
      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: radius),
        startAngle + i * segmentAngle,
        sweepAngle,
        false,
        i < progress * totalSegments ? progressPaint : backgroundPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
