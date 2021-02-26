import 'package:flutter/material.dart';

class CurvePainterFirst extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color.fromRGBO(255, 51, 83, 1);
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(
        size.width / 3, size.height * 0.55, size.width, size.height * 0.58);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainterSecond extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color.fromRGBO(255, 51, 83, 1);
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.58);
    path.quadraticBezierTo(
        size.width / 3, size.height * 0.55, size.width, size.height * 0.6);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainterThird extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color.fromRGBO(255, 51, 83, 1);
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(
        size.width / 3, size.height * 0.55, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}