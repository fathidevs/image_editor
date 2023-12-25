import 'package:flutter/material.dart';

class LeftShortSleeve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.3307813, size.height * 0.1226758);
    path.cubicTo(
        size.width * 0.3318555,
        size.height * 0.1042969,
        size.width * 0.3289063,
        size.height * 0.08607422,
        size.width * 0.3260547,
        size.height * 0.06824219);
    path.cubicTo(
        size.width * 0.3243164,
        size.height * 0.05730469,
        size.width * 0.3186133,
        size.height * 0.04654297,
        size.width * 0.3156836,
        size.height * 0.03535156);
    path.cubicTo(
        size.width * 0.3137500,
        size.height * 0.02794922,
        size.width * 0.3171484,
        size.height * 0.02345703,
        size.width * 0.3248047,
        size.height * 0.02220703);
    path.cubicTo(
        size.width * 0.3438867,
        size.height * 0.01908203,
        size.width * 0.3626953,
        size.height * 0.01507812,
        size.width * 0.3799219,
        size.height * 0.005488281);
    path.cubicTo(
        size.width * 0.3834766,
        size.height * 0.003515625,
        size.width * 0.3885547,
        size.height * 0.003320312,
        size.width * 0.3925195,
        size.height * 0.007011719);
    path.cubicTo(
        size.width * 0.3994531,
        size.height * 0.01347656,
        size.width * 0.4069727,
        size.height * 0.01916016,
        size.width * 0.4151563,
        size.height * 0.02408203);
    path.cubicTo(
        size.width * 0.4334375,
        size.height * 0.03503906,
        size.width * 0.4425195,
        size.height * 0.05218750,
        size.width * 0.4477148,
        size.height * 0.07234375);
    path.cubicTo(
        size.width * 0.4541992,
        size.height * 0.09744141,
        size.width * 0.4558594,
        size.height * 0.1233203,
        size.width * 0.4611914,
        size.height * 0.1485742);
    path.cubicTo(
        size.width * 0.4619141,
        size.height * 0.1519531,
        size.width * 0.4624023,
        size.height * 0.1553906,
        size.width * 0.4632227,
        size.height * 0.1587500);
    path.cubicTo(
        size.width * 0.4687109,
        size.height * 0.1810352,
        size.width * 0.4628516,
        size.height * 0.1937305,
        size.width * 0.4433203,
        size.height * 0.2049219);
    path.cubicTo(
        size.width * 0.4313672,
        size.height * 0.2117578,
        size.width * 0.4181836,
        size.height * 0.2167187,
        size.width * 0.4086328,
        size.height * 0.2275586);
    path.cubicTo(
        size.width * 0.4043555,
        size.height * 0.2324219,
        size.width * 0.4008789,
        size.height * 0.2373828,
        size.width * 0.3988086,
        size.height * 0.2434766);
    path.cubicTo(
        size.width * 0.3952344,
        size.height * 0.2539844,
        size.width * 0.3921875,
        size.height * 0.2548437,
        size.width * 0.3823047,
        size.height * 0.2484570);
    path.cubicTo(
        size.width * 0.3668945,
        size.height * 0.2384766,
        size.width * 0.3494922,
        size.height * 0.2345703,
        size.width * 0.3316406,
        size.height * 0.2329102);
    path.cubicTo(
        size.width * 0.3227930,
        size.height * 0.2320898,
        size.width * 0.3181641,
        size.height * 0.2297266,
        size.width * 0.3187305,
        size.height * 0.2197266);
    path.cubicTo(
        size.width * 0.3192578,
        size.height * 0.2104883,
        size.width * 0.3200195,
        size.height * 0.2016211,
        size.width * 0.3225977,
        size.height * 0.1925586);
    path.cubicTo(
        size.width * 0.3290820,
        size.height * 0.1697852,
        size.width * 0.3300977,
        size.height * 0.1461914,
        size.width * 0.3307813,
        size.height * 0.1226758);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
