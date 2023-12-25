import 'package:flutter/material.dart';
import 'package:image_editor/dlsk_consts.dart';
import 'package:image_editor/kits/parts/left_short.dart';
import 'package:image_editor/kits/parts/right_short_sleeve.dart';
import 'package:image_editor/kits/parts/right_under_sleeve.dart';
import 'full_shirt.dart';
import 'parts/left_short_sleeve.dart';
import 'parts/left_sock.dart';
import 'parts/left_under_sleeve.dart';
import 'parts/right_short.dart';
import 'parts/right_sock.dart';

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
        color: colors,
      ),
    );
  }
}

class KitPainter extends CustomPainter {
  final Map<String, Color> color;
  KitPainter({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    drawAndPaint(color[Kc.krs]!, RightSock().getClip(size), canvas);
    drawAndPaint(color[Kc.kls]!, LeftSock().getClip(size), canvas);
    //
    drawAndPaint(color[Kc.krsh]!, RightShort().getClip(size), canvas);
    drawAndPaint(color[Kc.klsh]!, LeftShort().getClip(size), canvas);
    //
    drawAndPaint(color[Kc.krss]!, RightShortSleeve().getClip(size), canvas);
    drawAndPaint(color[Kc.klss]!, LeftShortSleeve().getClip(size), canvas);
    //
    drawAndPaint(color[Kc.krus]!, RightUnderSleeve().getClip(size), canvas);
    drawAndPaint(color[Kc.klus]!, LeftUnderSleeve().getClip(size), canvas);
    //
    drawAndPaint(color[Kc.kfs]!, FullShirt().getClip(size), canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  void drawAndPaint(Color color, Path path, Canvas canvas) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
  }
}
