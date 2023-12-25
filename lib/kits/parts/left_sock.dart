import 'package:flutter/material.dart';

class LeftSock extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.9750391, size.height * 0.1442578);
    path.cubicTo(
        size.width * 0.9796680,
        size.height * 0.1273047,
        size.width * 0.9770117,
        size.height * 0.1116602,
        size.width * 0.9665430,
        size.height * 0.09714844);
    path.cubicTo(
        size.width * 0.9597266,
        size.height * 0.08773437,
        size.width * 0.9598828,
        size.height * 0.08558594,
        size.width * 0.9693164,
        size.height * 0.07759766);
    path.cubicTo(
        size.width * 0.9846094,
        size.height * 0.06466797,
        size.width * 0.9847070,
        size.height * 0.04414062,
        size.width * 0.9795313,
        size.height * 0.02925781);
    path.cubicTo(
        size.width * 0.9752930,
        size.height * 0.01703125,
        size.width * 0.9684766,
        size.height * 0.01417969,
        size.width * 0.9568359,
        size.height * 0.02025391);
    path.cubicTo(
        size.width * 0.9402148,
        size.height * 0.02894531,
        size.width * 0.9241602,
        size.height * 0.02781250,
        size.width * 0.9071289,
        size.height * 0.02134766);
    path.cubicTo(
        size.width * 0.8855273,
        size.height * 0.01312500,
        size.width * 0.8653320,
        size.height * 0.0003125000,
        size.width * 0.8411328,
        0);
    path.lineTo(size.width * 0.7709375, 0);
    path.cubicTo(
        size.width * 0.7665625,
        size.height * 0.004003906,
        size.width * 0.7612695,
        size.height * 0.001191406,
        size.width * 0.7564648,
        size.height * 0.001933594);
    path.cubicTo(
        size.width * 0.7498828,
        size.height * 0.002929688,
        size.width * 0.7433398,
        size.height * 0.001367187,
        size.width * 0.7365039,
        size.height * 0.003515625);
    path.cubicTo(
        size.width * 0.7271094,
        size.height * 0.006464844,
        size.width * 0.7238867,
        size.height * 0.007421875,
        size.width * 0.7227734,
        size.height * 0.01234375);
    path.lineTo(size.width * 0.7256055, size.height * 0.1634375);
    path.cubicTo(
        size.width * 0.7262109,
        size.height * 0.1669922,
        size.width * 0.7263086,
        size.height * 0.1705469,
        size.width * 0.7258594,
        size.height * 0.1741406);
    path.cubicTo(
        size.width * 0.7258398,
        size.height * 0.1741211,
        size.width * 0.7258203,
        size.height * 0.1741211,
        size.width * 0.7258008,
        size.height * 0.1741016);
    path.lineTo(size.width * 0.7262305, size.height * 0.1965625);
    path.cubicTo(
        size.width * 0.7267969,
        size.height * 0.2038281,
        size.width * 0.7271289,
        size.height * 0.2106836,
        size.width * 0.7275000,
        size.height * 0.2173828);
    path.cubicTo(
        size.width * 0.7280469,
        size.height * 0.2269727,
        size.width * 0.7314063,
        size.height * 0.2293164,
        size.width * 0.7397461,
        size.height * 0.2281641);
    path.cubicTo(
        size.width * 0.7413281,
        size.height * 0.2279492,
        size.width * 0.7429687,
        size.height * 0.2281445,
        size.width * 0.7446680,
        size.height * 0.2281445);
    path.lineTo(size.width * 0.8497461, size.height * 0.2259570);
    path.cubicTo(
        size.width * 0.8538281,
        size.height * 0.2255859,
        size.width * 0.8578906,
        size.height * 0.2248047,
        size.width * 0.8618359,
        size.height * 0.2236914);
    path.cubicTo(
        size.width * 0.8965234,
        size.height * 0.2138086,
        size.width * 0.9308008,
        size.height * 0.2027148,
        size.width * 0.9654883,
        size.height * 0.1928516);
    path.cubicTo(
        size.width * 0.9776367,
        size.height * 0.1894141,
        size.width * 0.9808984,
        size.height * 0.1835937,
        size.width * 0.9763086,
        size.height * 0.1716797);
    path.cubicTo(
        size.width * 0.9726758,
        size.height * 0.1623633,
        size.width * 0.9724609,
        size.height * 0.1536523,
        size.width * 0.9750391,
        size.height * 0.1442578);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
