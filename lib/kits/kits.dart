import 'package:flutter/material.dart';
import 'package:image_editor/kits/pants.dart';
import 'package:image_editor/kits/shirt.dart';

/*

  this class is used to paint the shapes using KisPainter class

    *this file is step 3 in adding new kit: 
    a. add new param in constructor matching the new param added in step 2
    b. add the new param in KitPainter()
    
*/

class Kits extends StatelessWidget {
  
  final Map<String, Color> colors;
  const Kits({
    super.key,
  
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: MediaQuery.sizeOf(context),
      painter: KitPainter(
        shirtColor: colors['shirt']!,
        pantsColor: colors['pants']!,
      ),
    );
  }
}

/*
  
    *this file is step 2 in adding new kit: 
    a. add new param in constructor
    b. add drawAndPaint() with the new param + the added kit
    
*/

class KitPainter extends CustomPainter {
  final Color shirtColor;
  final Color pantsColor;
  KitPainter({
    required this.shirtColor,
    required this.pantsColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    drawAndPaint(shirtColor, size, Shirt().getClip(size), canvas);
    drawAndPaint(pantsColor, size, Pants().getClip(size), canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  void drawAndPaint(Color color, Size size, Path path, Canvas canvas) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
  }
}
