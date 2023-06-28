// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// /// well i can use alpha images , then pan down and up count , too easy ha
// class FingureWheelPaint extends CustomPainter {
//   final double dialerRadius;

//   FingureWheelPaint({required this.dialerRadius});

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.green.withOpacity(.5)
//       ..strokeWidth = dialerRadius * .3
//       ..style = PaintingStyle.stroke
//       ..strokeJoin = StrokeJoin.round;

//     Offset _center = Offset(size.width / 2, size.height / 2);
//     canvas.drawCircle(_center, dialerRadius * .82, paint);
//     paint..color = const Color.fromARGB(255, 0, 0, 0);

//     Offset offset = Offset(size.width * .47, size.height * .120);
//     canvas.drawCircle(offset, 20, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
// }
