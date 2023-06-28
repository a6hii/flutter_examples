import 'package:dial_lock/components/utils/helper.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SpringHousePaint extends CustomPainter {
  final double dialerRadius;

  SpringHousePaint({
    required this.dialerRadius,
  });
  // TextSpan span =
  //     new TextSpan(style: new TextStyle(color: Colors.grey[600]), text: 'Yrfc');

  @override
  void paint(Canvas canvas, Size size) {
    // print("$size");
    Paint paint = Paint()..color = Colors.black;

    /// center++ for dialer
    Offset _center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(_center, dialerRadius, paint);

    paint..color = Colors.white;
    canvas.drawCircle(_center, dialerRadius * .63, paint);

    ///`dialer digits`
    ///`3`
    Offset offset = Offset(size.width * .47, size.height * .092);
    PaintHelper.getTextPainter(3).paint(canvas, offset);

    ///`2`
    offset = Offset(size.width * .64, size.height * .14);
    PaintHelper.getTextPainter(2).paint(canvas, offset);

    ///`1`
    offset = Offset(size.width * .775, size.height * .26);
    PaintHelper.getTextPainter(1).paint(canvas, offset);

    ///`9`
    offset = Offset(size.width * .47, size.height * .81);
    PaintHelper.getTextPainter(9).paint(canvas, offset);

    ///`8`
    offset = Offset(size.width * .28, size.height * .75);
    PaintHelper.getTextPainter(8).paint(canvas, offset);

    ///`7`
    offset = Offset(size.width * .165, size.height * .627);
    PaintHelper.getTextPainter(7).paint(canvas, offset);

    ///`6`
    offset = Offset(size.width * .125, size.height * .455);
    PaintHelper.getTextPainter(6).paint(canvas, offset);

    ///`5`
    offset = Offset(size.width * .175, size.height * .275);
    PaintHelper.getTextPainter(5).paint(canvas, offset);

    ///`4`
    offset = Offset(size.width * .289, size.height * .15);
    PaintHelper.getTextPainter(4).paint(canvas, offset);

    /// `0`
    offset = Offset(size.width * .647, size.height * .77);
    PaintHelper.getTextPainter(0).paint(canvas, offset);

    ///`confirm dialer (maybe)`
    offset = Offset(size.width * .81, size.height * .67);
    canvas.drawCircle(offset, size.width * .030, paint);

    ///`Helper`
    // paint
    //   ..color = Colors.blue.withOpacity(.7)
    //   ..strokeWidth = 3;
    // canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), paint);
    // canvas.drawLine(Offset(0, size.height), Offset(size.width, 0), paint);

    // canvas.drawLine(Offset(size.width * .5, 0),
    //     Offset(size.width * .5, size.height), paint);

    // canvas.drawLine(Offset(0, size.height * .5),
    //     Offset(size.width, size.height * .5), paint);

    // canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), paint);
    // canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ThickCShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: ThickCShapePainter(),
      ),
    );
  }
}

class ThickCShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double strokeWidth = 42.0;
    final double radius = (size.width - strokeWidth) / 1.2;

    final Paint paint = Paint()
      ..color = Colors.indigoAccent.withAlpha(100)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final Rect rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: radius,
    );

    final double startAngle = 7.2 * (pi / 4);
    final double sweepAngle = -1.48 * pi;

    final Path path = Path()..addArc(rect, startAngle, sweepAngle);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
