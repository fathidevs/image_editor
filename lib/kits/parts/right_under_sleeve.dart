import 'package:flutter/material.dart';

class RightUnderSleeve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1159570, size.height * 0.2741992);
    path.cubicTo(
        size.width * 0.1355469,
        size.height * 0.2741992,
        size.width * 0.1551562,
        size.height * 0.2746094,
        size.width * 0.1747266,
        size.height * 0.2740039);
    path.cubicTo(
        size.width * 0.1826562,
        size.height * 0.2737500,
        size.width * 0.1862500,
        size.height * 0.2778516,
        size.width * 0.1878906,
        size.height * 0.2839648);
    path.cubicTo(
        size.width * 0.1948242,
        size.height * 0.3097852,
        size.width * 0.2032617,
        size.height * 0.3347070,
        size.width * 0.2172852,
        size.height * 0.3579687);
    path.cubicTo(
        size.width * 0.2264844,
        size.height * 0.3732227,
        size.width * 0.2328125,
        size.height * 0.3907227,
        size.width * 0.2311328,
        size.height * 0.4094922);
    path.cubicTo(
        size.width * 0.2302539,
        size.height * 0.4193164,
        size.width * 0.2330859,
        size.height * 0.4287109,
        size.width * 0.2333398,
        size.height * 0.4383984);
    path.cubicTo(
        size.width * 0.2335156,
        size.height * 0.4454883,
        size.width * 0.2306055,
        size.height * 0.4492578,
        size.width * 0.2247461,
        size.height * 0.4529102);
    path.cubicTo(
        size.width * 0.2043555,
        size.height * 0.4655469,
        size.width * 0.1822656,
        size.height * 0.4698242,
        size.width * 0.1585352,
        size.height * 0.4707227);
    path.cubicTo(
        size.width * 0.1362891,
        size.height * 0.4715625,
        size.width * 0.1141992,
        size.height * 0.4761523,
        size.width * 0.09193359,
        size.height * 0.4779297);
    path.cubicTo(
        size.width * 0.07398437,
        size.height * 0.4793555,
        size.width * 0.05595703,
        size.height * 0.4783398,
        size.width * 0.03847656,
        size.height * 0.4729687);
    path.cubicTo(
        size.width * 0.03185547,
        size.height * 0.4709375,
        size.width * 0.02564453,
        size.height * 0.4692578,
        size.width * 0.01812500,
        size.height * 0.4717188);
    path.cubicTo(
        size.width * 0.01259766,
        size.height * 0.4735352,
        size.width * 0.006562500,
        size.height * 0.4699219,
        size.width * 0.007695312,
        size.height * 0.4619531);
    path.cubicTo(
        size.width * 0.01130859,
        size.height * 0.4361719,
        size.width * 0.01101562,
        size.height * 0.4099805,
        size.width * 0.01894531,
        size.height * 0.3846094);
    path.cubicTo(
        size.width * 0.02417969,
        size.height * 0.3678320,
        size.width * 0.03027344,
        size.height * 0.3512500,
        size.width * 0.03476562,
        size.height * 0.3342969);
    path.cubicTo(
        size.width * 0.03839844,
        size.height * 0.3205664,
        size.width * 0.03972656,
        size.height * 0.3061133,
        size.width * 0.04082031,
        size.height * 0.2918750);
    path.cubicTo(
        size.width * 0.04195312,
        size.height * 0.2770117,
        size.width * 0.04412109,
        size.height * 0.2741797,
        size.width * 0.05916016,
        size.height * 0.2741797);
    path.cubicTo(
        size.width * 0.07808594,
        size.height * 0.2741992,
        size.width * 0.09703125,
        size.height * 0.2741992,
        size.width * 0.1159570,
        size.height * 0.2741992);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
