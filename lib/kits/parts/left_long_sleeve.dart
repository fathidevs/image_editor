import 'package:flutter/material.dart';

class LeftLongSleeve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.8121484, size.height * 0.7734766);
    path.cubicTo(
        size.width * 0.8100391,
        size.height * 0.7691406,
        size.width * 0.8137695,
        size.height * 0.7663281,
        size.width * 0.8162305,
        size.height * 0.7630469);
    path.cubicTo(
        size.width * 0.8216992,
        size.height * 0.7556445,
        size.width * 0.8286719,
        size.height * 0.7497656,
        size.width * 0.8367773,
        size.height * 0.7453125);
    path.cubicTo(
        size.width * 0.8441797,
        size.height * 0.7412109,
        size.width * 0.8520117,
        size.height * 0.7375977,
        size.width * 0.8587500,
        size.height * 0.7325586);
    path.cubicTo(
        size.width * 0.8705859,
        size.height * 0.7236719,
        size.width * 0.8808789,
        size.height * 0.7117383,
        size.width * 0.8776172,
        size.height * 0.6965039);
    path.cubicTo(
        size.width * 0.8706445,
        size.height * 0.6642969,
        size.width * 0.8660352,
        size.height * 0.6317188,
        size.width * 0.8599609,
        size.height * 0.5993750);
    path.cubicTo(
        size.width * 0.8569336,
        size.height * 0.5832031,
        size.width * 0.8504687,
        size.height * 0.5699609,
        size.width * 0.8384766,
        size.height * 0.5589453);
    path.cubicTo(
        size.width * 0.8326953,
        size.height * 0.5536328,
        size.width * 0.8260352,
        size.height * 0.5494727,
        size.width * 0.8200586,
        size.height * 0.5444727);
    path.cubicTo(
        size.width * 0.8173242,
        size.height * 0.5421680,
        size.width * 0.8136719,
        size.height * 0.5408008,
        size.width * 0.8118359,
        size.height * 0.5367188);
    path.cubicTo(
        size.width * 0.8047461,
        size.height * 0.5326172,
        size.width * 0.7983984,
        size.height * 0.5344727,
        size.width * 0.7974414,
        size.height * 0.5348242);
    path.cubicTo(
        size.width * 0.7942773,
        size.height * 0.5365234,
        size.width * 0.7910156,
        size.height * 0.5368750,
        size.width * 0.7860156,
        size.height * 0.5349023);
    path.lineTo(size.width * 0.7753906, size.height * 0.5382813);
    path.cubicTo(
        size.width * 0.7508398,
        size.height * 0.5444922,
        size.width * 0.7265625,
        size.height * 0.5506250,
        size.width * 0.7018359,
        size.height * 0.5505273);
    path.cubicTo(
        size.width * 0.6876758,
        size.height * 0.5504492,
        size.width * 0.6748633,
        size.height * 0.5523438,
        size.width * 0.6621680,
        size.height * 0.5577734);
    path.cubicTo(
        size.width * 0.6579688,
        size.height * 0.5595508,
        size.width * 0.6535938,
        size.height * 0.5608984,
        size.width * 0.6491797,
        size.height * 0.5620703);
    path.cubicTo(
        size.width * 0.6272656,
        size.height * 0.5678125,
        size.width * 0.6064063,
        size.height * 0.5758984,
        size.width * 0.5872852,
        size.height * 0.5881836);
    path.cubicTo(
        size.width * 0.5776953,
        size.height * 0.5943750,
        size.width * 0.5758594,
        size.height * 0.5989648,
        size.width * 0.5801563,
        size.height * 0.6094141);
    path.cubicTo(
        size.width * 0.5829297,
        size.height * 0.6161133,
        size.width * 0.5857422,
        size.height * 0.6226367,
        size.width * 0.5846680,
        size.height * 0.6301172);
    path.cubicTo(
        size.width * 0.5815430,
        size.height * 0.6520117,
        size.width * 0.5800000,
        size.height * 0.6741992,
        size.width * 0.5679688,
        size.height * 0.6938867);
    path.cubicTo(
        size.width * 0.5620703,
        size.height * 0.7035352,
        size.width * 0.5642383,
        size.height * 0.7099805,
        size.width * 0.5744141,
        size.height * 0.7144727);
    path.cubicTo(
        size.width * 0.6051758,
        size.height * 0.7280078,
        size.width * 0.6363477,
        size.height * 0.7401953,
        size.width * 0.6691211,
        size.height * 0.7483594);
    path.cubicTo(
        size.width * 0.7057422,
        size.height * 0.7574805,
        size.width * 0.7432227,
        size.height * 0.7621289,
        size.width * 0.7795703,
        size.height * 0.7721484);
    path.lineTo(size.width * 0.8121484, size.height * 0.7734766);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
