import 'dart:math';

import 'package:flutter/material.dart';

class DrawArcWidget extends StatelessWidget {
  final Widget child;
  final double percent;
  final Color arcColor;
  final Color arcLeftColor;
  final double lineWidth;

  const DrawArcWidget({
    Key? key,
    required this.child,
    required this.arcColor,
    required this.arcLeftColor,
    required this.lineWidth,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
          painter: MyPainter(
            percent: percent,
            arcColor: arcColor,
            arcLeftColor: arcLeftColor,
            lineWidth: lineWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: screenWidth * 0.012,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: screenWidth * 0.015,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.done,
                    size: screenWidth * 0.01,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.008,
              ),
              child,
            ],
          )),
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  final double percent;
  final Color arcColor;
  final Color arcLeftColor;
  final double lineWidth;

  MyPainter({
    required this.percent,
    required this.arcColor,
    required this.arcLeftColor,
    required this.lineWidth,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final arcRect = calculatingArcsRect(size);
    drawMainArc(canvas, arcRect);
    drawLeftArc(canvas, arcRect);
  }

  void drawMainArc(Canvas canvas, Rect arcRect) {
    final arcPaint = Paint();
    arcPaint.color = arcColor;
    arcPaint.style = PaintingStyle.stroke;
    arcPaint.strokeWidth = lineWidth;
    arcPaint.strokeCap = StrokeCap.round;
    canvas.drawArc(
      arcRect,
      pi + (percent / 2) * 2 * pi,
      pi - (percent / 2) * 2 * pi,
      false,
      arcPaint,
    );
  }

  void drawLeftArc(Canvas canvas, Rect arcRect) {
    final arcLeftPaint = Paint();
    arcLeftPaint.color = arcLeftColor;
    arcLeftPaint.style = PaintingStyle.stroke;
    arcLeftPaint.strokeWidth = lineWidth;
    arcLeftPaint.strokeCap = StrokeCap.round;

    canvas.drawArc(
      arcRect,
      pi,
      (percent / 2) * 2 * pi,
      false,
      arcLeftPaint,
    );
  }

  Rect calculatingArcsRect(Size size) {
    const linesMargin = 3;
    final offset = lineWidth / 2 + linesMargin;
    final arcRect = Offset(offset, offset) &
        Size(size.width - offset * 2, size.height - offset * 2);
    return arcRect;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
