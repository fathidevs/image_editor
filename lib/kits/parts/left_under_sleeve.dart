import 'package:flutter/material.dart';

class LeftUnderSleeve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1317969, size.height * 0.6811914);
    path.cubicTo(
        size.width * 0.1116602,
        size.height * 0.6811914,
        size.width * 0.09148438,
        size.height * 0.6807813,
        size.width * 0.07136719,
        size.height * 0.6814062);
    path.cubicTo(
        size.width * 0.06365234,
        size.height * 0.6816406,
        size.width * 0.05953125,
        size.height * 0.6780078,
        size.width * 0.05794922,
        size.height * 0.6718945);
    path.cubicTo(
        size.width * 0.05498047,
        size.height * 0.6603711,
        size.width * 0.04992188,
        size.height * 0.6495508,
        size.width * 0.04757813,
        size.height * 0.6377734);
    path.cubicTo(
        size.width * 0.04544922,
        size.height * 0.6269922,
        size.width * 0.03923828,
        size.height * 0.6175391,
        size.width * 0.03376953,
        size.height * 0.6081836);
    path.cubicTo(
        size.width * 0.02156250,
        size.height * 0.5873047,
        size.width * 0.01296875,
        size.height * 0.5658398,
        size.width * 0.01455078,
        size.height * 0.5409961);
    path.cubicTo(
        size.width * 0.01500000,
        size.height * 0.5338672,
        size.width * 0.01345703,
        size.height * 0.5263867,
        size.width * 0.01166016,
        size.height * 0.5193750);
    path.cubicTo(
        size.width * 0.01039063,
        size.height * 0.5144336,
        size.width * 0.01068359,
        size.height * 0.5097852,
        size.width * 0.01476563,
        size.height * 0.5079297);
    path.cubicTo(
        size.width * 0.02533203,
        size.height * 0.5031250,
        size.width * 0.03433594,
        size.height * 0.4951563,
        size.width * 0.04568359,
        size.height * 0.4921680);
    path.cubicTo(
        size.width * 0.05326172,
        size.height * 0.4901758,
        size.width * 0.06119141,
        size.height * 0.4882227,
        size.width * 0.06890625,
        size.height * 0.4883984);
    path.cubicTo(
        size.width * 0.08953125,
        size.height * 0.4888672,
        size.width * 0.1091406,
        size.height * 0.4816797,
        size.width * 0.1293359,
        size.height * 0.4809180);
    path.cubicTo(
        size.width * 0.1546094,
        size.height * 0.4799805,
        size.width * 0.1803906,
        size.height * 0.4743555,
        size.width * 0.2051758,
        size.height * 0.4843555);
    path.cubicTo(
        size.width * 0.2117969,
        size.height * 0.4870312,
        size.width * 0.2184375,
        size.height * 0.4859766,
        size.width * 0.2250977,
        size.height * 0.4861523);
    path.cubicTo(
        size.width * 0.2353906,
        size.height * 0.4864258,
        size.width * 0.2389844,
        size.height * 0.4889844,
        size.width * 0.2367578,
        size.height * 0.4987695);
    path.cubicTo(
        size.width * 0.2326367,
        size.height * 0.5168359,
        size.width * 0.2343750,
        size.height * 0.5354297,
        size.width * 0.2298633,
        size.height * 0.5534961);
    path.cubicTo(
        size.width * 0.2243164,
        size.height * 0.5757031,
        size.width * 0.2176758,
        size.height * 0.5974414,
        size.width * 0.2101172,
        size.height * 0.6190430);
    path.cubicTo(
        size.width * 0.2050195,
        size.height * 0.6336328,
        size.width * 0.2051758,
        size.height * 0.6496680,
        size.width * 0.2040820,
        size.height * 0.6651172);
    path.cubicTo(
        size.width * 0.2030469,
        size.height * 0.6798047,
        size.width * 0.2024805,
        size.height * 0.6811914,
        size.width * 0.1883203,
        size.height * 0.6811914);
    path.cubicTo(
        size.width * 0.1694922,
        size.height * 0.6811914,
        size.width * 0.1506445,
        size.height * 0.6811914,
        size.width * 0.1317969,
        size.height * 0.6811914);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
