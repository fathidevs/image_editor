import 'package:flutter/material.dart';

class RightLongSleeve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.3231836, size.height * 0.7621094);
    path.cubicTo(
        size.width * 0.3336133,
        size.height * 0.7584766,
        size.width * 0.3437891,
        size.height * 0.7547266,
        size.width * 0.3548438,
        size.height * 0.7533203);
    path.cubicTo(
        size.width * 0.3721875,
        size.height * 0.7511133,
        size.width * 0.3893164,
        size.height * 0.7474414,
        size.width * 0.4064648,
        size.height * 0.7440430);
    path.cubicTo(
        size.width * 0.4443945,
        size.height * 0.7365430,
        size.width * 0.4807617,
        size.height * 0.7239453,
        size.width * 0.5160742,
        size.height * 0.7080664);
    path.cubicTo(
        size.width * 0.5381445,
        size.height * 0.6981445,
        size.width * 0.5379492,
        size.height * 0.6972070,
        size.width * 0.5288086,
        size.height * 0.6751367);
    path.cubicTo(
        size.width * 0.5185156,
        size.height * 0.6502539,
        size.width * 0.5102930,
        size.height * 0.6245508,
        size.width * 0.5207422,
        size.height * 0.5971484);
    path.cubicTo(
        size.width * 0.5229883,
        size.height * 0.5912695,
        size.width * 0.5224219,
        size.height * 0.5852930,
        size.width * 0.5164844,
        size.height * 0.5816406);
    path.cubicTo(
        size.width * 0.5035156,
        size.height * 0.5737109,
        size.width * 0.4913672,
        size.height * 0.5641602,
        size.width * 0.4765039,
        size.height * 0.5598633);
    path.cubicTo(
        size.width * 0.4590625,
        size.height * 0.5548242,
        size.width * 0.4417969,
        size.height * 0.5492773,
        size.width * 0.4243359,
        size.height * 0.5443164);
    path.cubicTo(
        size.width * 0.4196094,
        size.height * 0.5429688,
        size.width * 0.4148633,
        size.height * 0.5422656,
        size.width * 0.4099805,
        size.height * 0.5421875);
    path.cubicTo(
        size.width * 0.3758789,
        size.height * 0.5417188,
        size.width * 0.3432617,
        size.height * 0.5339648,
        size.width * 0.3116992,
        size.height * 0.5216602);
    path.cubicTo(
        size.width * 0.3058398,
        size.height * 0.5193750,
        size.width * 0.3010937,
        size.height * 0.5201563,
        size.width * 0.2963281,
        size.height * 0.5238281);
    path.cubicTo(
        size.width * 0.2888867,
        size.height * 0.5295313,
        size.width * 0.2818555,
        size.height * 0.5357813,
        size.width * 0.2738672,
        size.height * 0.5408398);
    path.cubicTo(
        size.width * 0.2570117,
        size.height * 0.5515430,
        size.width * 0.2466211,
        size.height * 0.5661719,
        size.width * 0.2423633,
        size.height * 0.5863867);
    path.cubicTo(
        size.width * 0.2354688,
        size.height * 0.6193750,
        size.width * 0.2346289,
        size.height * 0.6534375,
        size.width * 0.2236914,
        size.height * 0.6856250);
    path.cubicTo(
        size.width * 0.2220313,
        size.height * 0.6904492,
        size.width * 0.2233203,
        size.height * 0.6951953,
        size.width * 0.2255664,
        size.height * 0.6997070);
    path.cubicTo(
        size.width * 0.2316406,
        size.height * 0.7119531,
        size.width * 0.2397656,
        size.height * 0.7218164,
        size.width * 0.2526562,
        size.height * 0.7277148);
    path.cubicTo(
        size.width * 0.2647461,
        size.height * 0.7332422,
        size.width * 0.2764844,
        size.height * 0.7396680,
        size.width * 0.2852539,
        size.height * 0.7501172);
    path.cubicTo(
        size.width * 0.2873047,
        size.height * 0.7525195,
        size.width * 0.2900000,
        size.height * 0.7553320,
        size.width * 0.2885156,
        size.height * 0.7585156);
    path.lineTo(size.width * 0.3231836, size.height * 0.7621094);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
