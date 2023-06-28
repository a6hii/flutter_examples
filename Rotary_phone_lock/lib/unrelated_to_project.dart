
// import 'dart:math';
// import 'package:flutter/material.dart';

// class CircleWithText extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ColorFiltered(
//         colorFilter: ColorFilter.mode(
//             Colors.black.withOpacity(0.8), BlendMode.srcOut), // This one will create the magic
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.black,
//                   backgroundBlendMode: BlendMode.dstOut), // This one will handle background + difference out
//             ),
//             Align(
//               alignment: Alignment.topCenter,
//               child: Container(
//                 margin: const EdgeInsets.only(top: 80),
//                 height: 200,
//                 width: 200,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//               ),
//             ),
           
//             ],
//           ),
//         );
//   }
// }

// class CircleWithHolesPainter extends CustomPainter {
//   final double circleRadius = 80.0;
//   final int numberOfHoles = 8;

//   @override
//   void paint(Canvas canvas, Size size) {
//     final Offset center = Offset(size.width / 2, size.height / 2);
//     final Paint circlePaint = Paint()
//       ..color = Colors.blue
//       ..style = PaintingStyle.fill;

//     final double angle = 2 * pi / numberOfHoles;
//     final double holeRadius = 15.0;
//     final double distanceFromCenter = circleRadius - holeRadius;

//     final path = Path();
//     for (int i = 0; i < numberOfHoles; i++) {
//       final double theta = i * angle;
//       final dx = center.dx + distanceFromCenter * cos(theta);
//       final dy = center.dy + distanceFromCenter * sin(theta);

//       path.addOval(Rect.fromCircle(center: Offset(dx, dy), radius: holeRadius));
//     }

//     canvas.drawCircle(center, circleRadius, circlePaint);
//     canvas.clipPath(path);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class TextOverlay extends StatelessWidget {
//   final List<String> texts = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: texts.map((text) {
//         final random = Random();
//         final double x = random.nextDouble() * 160 + 20;
//         final double y = random.nextDouble() * 160 + 20;

//         return Positioned(
//           left: x,
//           top: y,
//           child: Text(
//             text,
//             style: TextStyle(fontSize: 16),
//           ),
//         );
//       }).toList(),
//     );
//   }
// }

// void main() {
//   runApp(CircleWithTextExample());
// }

// class CircleWithTextExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
      
//       home: Scaffold(
//         backgroundColor: Colors.indigo,
//         appBar: AppBar(
//           title: Text('Circle with Text Example'),
//         ),
//         body: Center(
//           child: CircleWithText(),
//         ),
//       ),
//     );
//   }
// }