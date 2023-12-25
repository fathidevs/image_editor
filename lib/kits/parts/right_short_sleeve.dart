import 'package:flutter/material.dart';

class RightShortSleeve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.2467383, 0);
    path.cubicTo(
        size.width * 0.2621680,
        size.height * 0.003378906,
        size.width * 0.2766602,
        size.height * 0.01044922,
        size.width * 0.2926367,
        size.height * 0.01173828);
    path.cubicTo(
        size.width * 0.3042383,
        size.height * 0.01267578,
        size.width * 0.3083594,
        size.height * 0.01777344,
        size.width * 0.3046875,
        size.height * 0.02857422);
    path.cubicTo(
        size.width * 0.2957617,
        size.height * 0.05496094,
        size.width * 0.2911914,
        size.height * 0.08171875,
        size.width * 0.2913281,
        size.height * 0.1097852);
    path.cubicTo(
        size.width * 0.2914648,
        size.height * 0.1374219,
        size.width * 0.2940039,
        size.height * 0.1644531,
        size.width * 0.3019922,
        size.height * 0.1908594);
    path.cubicTo(
        size.width * 0.3046094,
        size.height * 0.1995312,
        size.width * 0.3032031,
        size.height * 0.2081641,
        size.width * 0.3030859,
        size.height * 0.2167578);
    path.cubicTo(
        size.width * 0.3030273,
        size.height * 0.2205664,
        size.width * 0.2991797,
        size.height * 0.2226563,
        size.width * 0.2945703,
        size.height * 0.2228711);
    path.cubicTo(
        size.width * 0.2793359,
        size.height * 0.2235938,
        size.width * 0.2649023,
        size.height * 0.2281641,
        size.width * 0.2507812,
        size.height * 0.2335156);
    path.cubicTo(
        size.width * 0.2467773,
        size.height * 0.2350391,
        size.width * 0.2430078,
        size.height * 0.2373828,
        size.width * 0.2395703,
        size.height * 0.2404102);
    path.cubicTo(
        size.width * 0.2323828,
        size.height * 0.2466992,
        size.width * 0.2274219,
        size.height * 0.2458008,
        size.width * 0.2246484,
        size.height * 0.2365820);
    path.cubicTo(
        size.width * 0.2194531,
        size.height * 0.2193750,
        size.width * 0.2063672,
        size.height * 0.2108984,
        size.width * 0.1918750,
        size.height * 0.2031445);
    path.cubicTo(
        size.width * 0.1801562,
        size.height * 0.1968750,
        size.width * 0.1689844,
        size.height * 0.1906445,
        size.width * 0.1602539,
        size.height * 0.1792578);
    path.cubicTo(
        size.width * 0.1528516,
        size.height * 0.1696094,
        size.width * 0.1548828,
        size.height * 0.1608594,
        size.width * 0.1572266,
        size.height * 0.1523438);
    path.cubicTo(
        size.width * 0.1641406,
        size.height * 0.1272070,
        size.width * 0.1655078,
        size.height * 0.1012305,
        size.width * 0.1704297,
        size.height * 0.07580078);
    path.cubicTo(
        size.width * 0.1741797,
        size.height * 0.05644531,
        size.width * 0.1801953,
        size.height * 0.03810547,
        size.width * 0.1935352,
        size.height * 0.02326172);
    path.cubicTo(
        size.width * 0.1975781,
        size.height * 0.01876953,
        size.width * 0.2041211,
        size.height * 0.01660156,
        size.width * 0.2091992,
        size.height * 0.01291016);
    path.cubicTo(
        size.width * 0.2147461,
        size.height * 0.008886719,
        size.width * 0.2199023,
        size.height * 0.004316406,
        size.width * 0.2252344,
        size.height * 6.938894e-18);
    path.cubicTo(size.width * 0.2324023, 0, size.width * 0.2395703, 0,
        size.width * 0.2467383, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
