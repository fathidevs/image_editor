import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class PromoImage extends StatelessWidget {
  final ui.Image? image;
  const PromoImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: CustomPaint(
        painter: PromoPainter(image: image),
        size: MediaQuery.sizeOf(context),
      ),
    );
  }
}

class PromoPainter extends CustomPainter {
  final ui.Image? image;
  PromoPainter({
    required this.image,
  });
  @override
  void paint(Canvas canvas, Size size) {
    if (image != null) {
      canvas.drawImage(image!,
          Offset(size.width * 0.7439453, size.height * 0.2916016), Paint());
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
