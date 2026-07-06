import 'package:flutter/material.dart';

class PitchLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withValues(alpha: 0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    canvas.drawLine(Offset(0, size.height / 2), Offset(size.width, size.height / 2), paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 45, paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.25, 0, size.width * 0.5, size.height * 0.12), paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.38, 0, size.width * 0.24, size.height * 0.05), paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.25, size.height * 0.88, size.width * 0.5, size.height * 0.12), paint);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.38, size.height * 0.95, size.width * 0.24, size.height * 0.05), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
