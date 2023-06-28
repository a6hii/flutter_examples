import 'package:flutter/material.dart';

class RectangleJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: RectangleJoinPainter(),
      ),
    );
  }
}

class RectangleJoinPainter extends CustomPainter {
  final double borderWidth = 4.0;
  final Color outerRectColor = Colors.black;
  final Color innerRectColor = Colors.transparent;

  @override
  void paint(Canvas canvas, Size size) {
    final double innerRectWidth = size.width / 2;
    final double innerRectHeight = size.height / 2;
    final double outerRectWidth = size.width;
    final double outerRectHeight = size.height;

    final Paint innerRectPaint = Paint()
      ..color = innerRectColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final Paint outerRectPaint = Paint()
      ..color = outerRectColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final Path path = Path()
      // Draw the outer rectangle
      ..addRect(
        Rect.fromLTWH(
          0,
          0,
          outerRectWidth,
          outerRectHeight,
        ),
      )
      // Draw the inner rectangle
      ..addRect(
        Rect.fromLTWH(
          (outerRectWidth - innerRectWidth) / 2,
          (outerRectHeight - innerRectHeight) / 2,
          innerRectWidth,
          innerRectHeight,
        ),
      )
      // Join the top-left corners of both rectangles
      ..moveTo(0, 0)
      ..lineTo((outerRectWidth - innerRectWidth) / 2, (outerRectHeight - innerRectHeight) / 2)
      // Join the top-right corners of both rectangles
      ..moveTo(outerRectWidth, 0)
      ..lineTo((outerRectWidth + innerRectWidth) / 2, (outerRectHeight - innerRectHeight) / 2)
      // Join the bottom-left corners of both rectangles
      ..moveTo(0, outerRectHeight)
      ..lineTo((outerRectWidth - innerRectWidth) / 2, (outerRectHeight + innerRectHeight) / 2)
      // Join the bottom-right corners of both rectangles
      ..moveTo(outerRectWidth, outerRectHeight)
      ..lineTo((outerRectWidth + innerRectWidth) / 2, (outerRectHeight + innerRectHeight) / 2);

    canvas.drawPath(path, outerRectPaint);
    canvas.drawPath(path, innerRectPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

void main() {
  runApp(RectangleJoinExample());
}

class RectangleJoinExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rectangle Join Example'),
        ),
        body: Center(
          child: RectangleJoin(),
        ),
      ),
    );
  }
}
