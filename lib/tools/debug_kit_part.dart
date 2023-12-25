import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7257422, size.height * 0.1720312);
    path_0.cubicTo(
        size.width * 0.7173242,
        size.height * 0.1659570,
        size.width * 0.7190625,
        size.height * 0.1575977,
        size.width * 0.7213477,
        size.height * 0.1486328);
    path_0.cubicTo(
        size.width * 0.7233203,
        size.height * 0.1524609,
        size.width * 0.7247070,
        size.height * 0.1562695,
        size.width * 0.7255078,
        size.height * 0.1600781);
    path_0.lineTo(size.width * 0.7224219, size.height * 0.03058594);
    path_0.cubicTo(
        size.width * 0.7167187,
        size.height * 0.02685547,
        size.width * 0.7116406,
        size.height * 0.02962891,
        size.width * 0.7073047,
        size.height * 0.03181641);
    path_0.cubicTo(
        size.width * 0.6905664,
        size.height * 0.04023437,
        size.width * 0.6745703,
        size.height * 0.03621094,
        size.width * 0.6587109,
        size.height * 0.02978516);
    path_0.cubicTo(
        size.width * 0.6481445,
        size.height * 0.02546875,
        size.width * 0.6377930,
        size.height * 0.02052734,
        size.width * 0.6275586,
        size.height * 0.01541016);
    path_0.cubicTo(
        size.width * 0.6108984,
        size.height * 0.007070312,
        size.width * 0.5931641,
        size.height * 0.003007812,
        size.width * 0.5747656,
        size.height * 0.001523437);
    path_0.cubicTo(
        size.width * 0.5744336,
        size.height * 0.001503906,
        size.width * 0.5741797,
        size.height * 0.0005468750,
        size.width * 0.5738867,
        size.height * -8.239937e-18);
    path_0.lineTo(size.width * 0.4832227, size.height * -8.239937e-18);
    path_0.cubicTo(
        size.width * 0.4739844,
        size.height * 0.0009570312,
        size.width * 0.4711328,
        size.height * 0.006992187,
        size.width * 0.4709375,
        size.height * 0.01527344);
    path_0.cubicTo(
        size.width * 0.4707031,
        size.height * 0.02425781,
        size.width * 0.4703906,
        size.height * 0.03322266,
        size.width * 0.4697461,
        size.height * 0.04220703);
    path_0.cubicTo(
        size.width * 0.4681836,
        size.height * 0.06496094,
        size.width * 0.4684766,
        size.height * 0.08781250,
        size.width * 0.4696094,
        size.height * 0.1106250);
    path_0.cubicTo(
        size.width * 0.4709766,
        size.height * 0.1382227,
        size.width * 0.4755078,
        size.height * 0.1655273,
        size.width * 0.4772656,
        size.height * 0.1931055);
    path_0.cubicTo(
        size.width * 0.4779102,
        size.height * 0.2029883,
        size.width * 0.4754102,
        size.height * 0.2129102,
        size.width * 0.4780859,
        size.height * 0.2228320);
    path_0.lineTo(size.width * 0.4934180, size.height * 0.2263477);
    path_0.cubicTo(
        size.width * 0.5147656,
        size.height * 0.2236133,
        size.width * 0.5347070,
        size.height * 0.2257617,
        size.width * 0.5544531,
        size.height * 0.2312695);
    path_0.cubicTo(
        size.width * 0.5615430,
        size.height * 0.2332422,
        size.width * 0.5689062,
        size.height * 0.2300781,
        size.width * 0.5760352,
        size.height * 0.2291602);
    path_0.cubicTo(
        size.width * 0.6149219,
        size.height * 0.2241211,
        size.width * 0.6517578,
        size.height * 0.2102539,
        size.width * 0.6897852,
        size.height * 0.2015039);
    path_0.cubicTo(
        size.width * 0.6964648,
        size.height * 0.1999805,
        size.width * 0.7031836,
        size.height * 0.1981641,
        size.width * 0.7102539,
        size.height * 0.1985742);
    path_0.cubicTo(
        size.width * 0.7169336,
        size.height * 0.1989648,
        size.width * 0.7230273,
        size.height * 0.1974414,
        size.width * 0.7259375,
        size.height * 0.1890625);
    path_0.cubicTo(
        size.width * 0.7259766,
        size.height * 0.1895117,
        size.width * 0.7260156,
        size.height * 0.1899219,
        size.width * 0.7260547,
        size.height * 0.1903711);
    path_0.lineTo(size.width * 0.7257422, size.height * 0.1720312);
    path_0.close();
    path_0.moveTo(size.width * 0.7182617, size.height * 0.09886719);
    path_0.cubicTo(
        size.width * 0.7054297,
        size.height * 0.09318359,
        size.width * 0.7052734,
        size.height * 0.08578125,
        size.width * 0.7182617,
        size.height * 0.07597656);
    path_0.lineTo(size.width * 0.7182617, size.height * 0.09886719);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9750391, size.height * 0.1442578);
    path_1.cubicTo(
        size.width * 0.9796680,
        size.height * 0.1273047,
        size.width * 0.9770117,
        size.height * 0.1116602,
        size.width * 0.9665430,
        size.height * 0.09714844);
    path_1.cubicTo(
        size.width * 0.9597266,
        size.height * 0.08773437,
        size.width * 0.9598828,
        size.height * 0.08558594,
        size.width * 0.9693164,
        size.height * 0.07759766);
    path_1.cubicTo(
        size.width * 0.9846094,
        size.height * 0.06466797,
        size.width * 0.9847070,
        size.height * 0.04414062,
        size.width * 0.9795313,
        size.height * 0.02925781);
    path_1.cubicTo(
        size.width * 0.9752930,
        size.height * 0.01703125,
        size.width * 0.9684766,
        size.height * 0.01417969,
        size.width * 0.9568359,
        size.height * 0.02025391);
    path_1.cubicTo(
        size.width * 0.9402148,
        size.height * 0.02894531,
        size.width * 0.9241602,
        size.height * 0.02781250,
        size.width * 0.9071289,
        size.height * 0.02134766);
    path_1.cubicTo(
        size.width * 0.8855273,
        size.height * 0.01312500,
        size.width * 0.8653320,
        size.height * 0.0003125000,
        size.width * 0.8411328,
        0);
    path_1.lineTo(size.width * 0.7709375, 0);
    path_1.cubicTo(
        size.width * 0.7665625,
        size.height * 0.004003906,
        size.width * 0.7612695,
        size.height * 0.001191406,
        size.width * 0.7564648,
        size.height * 0.001933594);
    path_1.cubicTo(
        size.width * 0.7498828,
        size.height * 0.002929688,
        size.width * 0.7433398,
        size.height * 0.001367187,
        size.width * 0.7365039,
        size.height * 0.003515625);
    path_1.cubicTo(
        size.width * 0.7271094,
        size.height * 0.006464844,
        size.width * 0.7238867,
        size.height * 0.007421875,
        size.width * 0.7227734,
        size.height * 0.01234375);
    path_1.lineTo(size.width * 0.7256055, size.height * 0.1634375);
    path_1.cubicTo(
        size.width * 0.7262109,
        size.height * 0.1669922,
        size.width * 0.7263086,
        size.height * 0.1705469,
        size.width * 0.7258594,
        size.height * 0.1741406);
    path_1.cubicTo(
        size.width * 0.7258398,
        size.height * 0.1741211,
        size.width * 0.7258203,
        size.height * 0.1741211,
        size.width * 0.7258008,
        size.height * 0.1741016);
    path_1.lineTo(size.width * 0.7262305, size.height * 0.1965625);
    path_1.cubicTo(
        size.width * 0.7267969,
        size.height * 0.2038281,
        size.width * 0.7271289,
        size.height * 0.2106836,
        size.width * 0.7275000,
        size.height * 0.2173828);
    path_1.cubicTo(
        size.width * 0.7280469,
        size.height * 0.2269727,
        size.width * 0.7314063,
        size.height * 0.2293164,
        size.width * 0.7397461,
        size.height * 0.2281641);
    path_1.cubicTo(
        size.width * 0.7413281,
        size.height * 0.2279492,
        size.width * 0.7429687,
        size.height * 0.2281445,
        size.width * 0.7446680,
        size.height * 0.2281445);
    path_1.lineTo(size.width * 0.8497461, size.height * 0.2259570);
    path_1.cubicTo(
        size.width * 0.8538281,
        size.height * 0.2255859,
        size.width * 0.8578906,
        size.height * 0.2248047,
        size.width * 0.8618359,
        size.height * 0.2236914);
    path_1.cubicTo(
        size.width * 0.8965234,
        size.height * 0.2138086,
        size.width * 0.9308008,
        size.height * 0.2027148,
        size.width * 0.9654883,
        size.height * 0.1928516);
    path_1.cubicTo(
        size.width * 0.9776367,
        size.height * 0.1894141,
        size.width * 0.9808984,
        size.height * 0.1835937,
        size.width * 0.9763086,
        size.height * 0.1716797);
    path_1.cubicTo(
        size.width * 0.9726758,
        size.height * 0.1623633,
        size.width * 0.9724609,
        size.height * 0.1536523,
        size.width * 0.9750391,
        size.height * 0.1442578);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
