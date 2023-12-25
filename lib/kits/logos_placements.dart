import 'package:flutter/material.dart';

// //Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: LogoPlacements(),
// )

//Copy this CustomPainter code to the Bottom of the File
class LogoPlacements extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5767578, size.height * 0.1560547,
            size.width * 0.03437500, size.height * 0.04140625),
        paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6871094, size.height * 0.4058594,
            size.width * 0.02792969, size.height * 0.03359375),
        paint1Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7318359, size.height * 0.8837891,
            size.width * 0.04218750, size.height * 0.03496094),
        paint2Fill);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7439453, size.height * 0.2916016,
            size.width * 0.07207031, size.height * 0.1550781),
        paint3Fill);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.8330078, size.height * 0.1560547,
            size.width * 0.03437500, size.height * 0.04140625),
        paint4Fill);

    Paint paint5Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0009765625;
    paint5Stroke.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7439453, size.height * 0.2916016,
            size.width * 0.07207031, size.height * 0.1550781),
        paint5Stroke);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6871094, size.height * 0.4058594);
    path_6.lineTo(size.width * 0.6871094, size.height * 0.4394531);
    path_6.lineTo(size.width * 0.7148438, size.height * 0.4394531);
    path_6.lineTo(size.width * 0.7148438, size.height * 0.4058594);
    path_6.lineTo(size.width * 0.6871094, size.height * 0.4058594);
    path_6.close();
    path_6.moveTo(size.width * 0.7138672, size.height * 0.4384766);
    path_6.lineTo(size.width * 0.6878906, size.height * 0.4384766);
    path_6.lineTo(size.width * 0.6878906, size.height * 0.4068359);
    path_6.lineTo(size.width * 0.7138672, size.height * 0.4068359);
    path_6.lineTo(size.width * 0.7138672, size.height * 0.4384766);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.6972656, size.height * 0.4357422);
    path_7.lineTo(size.width * 0.6972656, size.height * 0.4347656);
    path_7.lineTo(size.width * 0.7041016, size.height * 0.4347656);
    path_7.lineTo(size.width * 0.7041016, size.height * 0.4316406);
    path_7.lineTo(size.width * 0.7048828, size.height * 0.4316406);
    path_7.lineTo(size.width * 0.7048828, size.height * 0.4359375);
    path_7.lineTo(size.width * 0.6972656, size.height * 0.4359375);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.7009766, size.height * 0.4244141);
    path_8.cubicTo(
        size.width * 0.7035156,
        size.height * 0.4244141,
        size.width * 0.7048828,
        size.height * 0.4259766,
        size.width * 0.7048828,
        size.height * 0.4279297);
    path_8.cubicTo(
        size.width * 0.7048828,
        size.height * 0.4298828,
        size.width * 0.7033203,
        size.height * 0.4312500,
        size.width * 0.7009766,
        size.height * 0.4312500);
    path_8.cubicTo(
        size.width * 0.6986328,
        size.height * 0.4312500,
        size.width * 0.6970703,
        size.height * 0.4296875,
        size.width * 0.6970703,
        size.height * 0.4277344);
    path_8.cubicTo(
        size.width * 0.6970703,
        size.height * 0.4257813,
        size.width * 0.6986328,
        size.height * 0.4244141,
        size.width * 0.7009766,
        size.height * 0.4244141);
    path_8.close();
    path_8.moveTo(size.width * 0.7009766, size.height * 0.4302734);
    path_8.cubicTo(
        size.width * 0.7025391,
        size.height * 0.4302734,
        size.width * 0.7041016,
        size.height * 0.4294922,
        size.width * 0.7041016,
        size.height * 0.4279297);
    path_8.cubicTo(
        size.width * 0.7041016,
        size.height * 0.4263672,
        size.width * 0.7027344,
        size.height * 0.4255859,
        size.width * 0.7009766,
        size.height * 0.4255859);
    path_8.cubicTo(
        size.width * 0.6994141,
        size.height * 0.4255859,
        size.width * 0.6978516,
        size.height * 0.4263672,
        size.width * 0.6978516,
        size.height * 0.4279297);
    path_8.cubicTo(
        size.width * 0.6978516,
        size.height * 0.4294922,
        size.width * 0.6994141,
        size.height * 0.4302734,
        size.width * 0.7009766,
        size.height * 0.4302734);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.7044922, size.height * 0.4173828);
    path_9.cubicTo(
        size.width * 0.7046875,
        size.height * 0.4177734,
        size.width * 0.7048828,
        size.height * 0.4187500,
        size.width * 0.7048828,
        size.height * 0.4197266);
    path_9.cubicTo(
        size.width * 0.7048828,
        size.height * 0.4208984,
        size.width * 0.7046875,
        size.height * 0.4218750,
        size.width * 0.7039062,
        size.height * 0.4224609);
    path_9.cubicTo(
        size.width * 0.7033203,
        size.height * 0.4230469,
        size.width * 0.7023437,
        size.height * 0.4234375,
        size.width * 0.7011719,
        size.height * 0.4234375);
    path_9.cubicTo(
        size.width * 0.6988281,
        size.height * 0.4234375,
        size.width * 0.6972656,
        size.height * 0.4218750,
        size.width * 0.6972656,
        size.height * 0.4193359);
    path_9.cubicTo(
        size.width * 0.6972656,
        size.height * 0.4185547,
        size.width * 0.6974609,
        size.height * 0.4177734,
        size.width * 0.6976562,
        size.height * 0.4173828);
    path_9.lineTo(size.width * 0.6984375, size.height * 0.4175781);
    path_9.cubicTo(
        size.width * 0.6982422,
        size.height * 0.4179687,
        size.width * 0.6980469,
        size.height * 0.4185547,
        size.width * 0.6980469,
        size.height * 0.4193359);
    path_9.cubicTo(
        size.width * 0.6980469,
        size.height * 0.4210937,
        size.width * 0.6992188,
        size.height * 0.4224609,
        size.width * 0.7011719,
        size.height * 0.4224609);
    path_9.cubicTo(
        size.width * 0.7031250,
        size.height * 0.4224609,
        size.width * 0.7042969,
        size.height * 0.4212891,
        size.width * 0.7042969,
        size.height * 0.4195312);
    path_9.cubicTo(
        size.width * 0.7042969,
        size.height * 0.4189453,
        size.width * 0.7042969,
        size.height * 0.4183594,
        size.width * 0.7041016,
        size.height * 0.4181641);
    path_9.lineTo(size.width * 0.7017578, size.height * 0.4181641);
    path_9.lineTo(size.width * 0.7017578, size.height * 0.4197266);
    path_9.lineTo(size.width * 0.7009766, size.height * 0.4197266);
    path_9.lineTo(size.width * 0.7009766, size.height * 0.4171875);
    path_9.lineTo(size.width * 0.7044922, size.height * 0.4171875);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.7009766, size.height * 0.4093750);
    path_10.cubicTo(
        size.width * 0.7035156,
        size.height * 0.4093750,
        size.width * 0.7048828,
        size.height * 0.4109375,
        size.width * 0.7048828,
        size.height * 0.4128906);
    path_10.cubicTo(
        size.width * 0.7048828,
        size.height * 0.4148438,
        size.width * 0.7033203,
        size.height * 0.4162109,
        size.width * 0.7009766,
        size.height * 0.4162109);
    path_10.cubicTo(
        size.width * 0.6986328,
        size.height * 0.4162109,
        size.width * 0.6970703,
        size.height * 0.4146484,
        size.width * 0.6970703,
        size.height * 0.4126953);
    path_10.cubicTo(
        size.width * 0.6970703,
        size.height * 0.4107422,
        size.width * 0.6986328,
        size.height * 0.4093750,
        size.width * 0.7009766,
        size.height * 0.4093750);
    path_10.close();
    path_10.moveTo(size.width * 0.7009766, size.height * 0.4154297);
    path_10.cubicTo(
        size.width * 0.7025391,
        size.height * 0.4154297,
        size.width * 0.7041016,
        size.height * 0.4146484,
        size.width * 0.7041016,
        size.height * 0.4130859);
    path_10.cubicTo(
        size.width * 0.7041016,
        size.height * 0.4115234,
        size.width * 0.7027344,
        size.height * 0.4107422,
        size.width * 0.7009766,
        size.height * 0.4107422);
    path_10.cubicTo(
        size.width * 0.6994141,
        size.height * 0.4107422,
        size.width * 0.6978516,
        size.height * 0.4115234,
        size.width * 0.6978516,
        size.height * 0.4130859);
    path_10.cubicTo(
        size.width * 0.6978516,
        size.height * 0.4144531,
        size.width * 0.6994141,
        size.height * 0.4154297,
        size.width * 0.7009766,
        size.height * 0.4154297);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.8330078, size.height * 0.1560547);
    path_11.lineTo(size.width * 0.8330078, size.height * 0.1974609);
    path_11.lineTo(size.width * 0.8673828, size.height * 0.1974609);
    path_11.lineTo(size.width * 0.8673828, size.height * 0.1560547);
    path_11.lineTo(size.width * 0.8330078, size.height * 0.1560547);
    path_11.close();
    path_11.moveTo(size.width * 0.8664063, size.height * 0.1964844);
    path_11.lineTo(size.width * 0.8339844, size.height * 0.1964844);
    path_11.lineTo(size.width * 0.8339844, size.height * 0.1570313);
    path_11.lineTo(size.width * 0.8664063, size.height * 0.1570313);
    path_11.lineTo(size.width * 0.8664063, size.height * 0.1964844);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.8455078, size.height * 0.1931641);
    path_12.lineTo(size.width * 0.8455078, size.height * 0.1919922);
    path_12.lineTo(size.width * 0.8539062, size.height * 0.1919922);
    path_12.lineTo(size.width * 0.8539062, size.height * 0.1878906);
    path_12.lineTo(size.width * 0.8548828, size.height * 0.1878906);
    path_12.lineTo(size.width * 0.8548828, size.height * 0.1931641);
    path_12.lineTo(size.width * 0.8455078, size.height * 0.1931641);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.8501953, size.height * 0.1789062);
    path_13.cubicTo(
        size.width * 0.8535156,
        size.height * 0.1789062,
        size.width * 0.8552734,
        size.height * 0.1808594,
        size.width * 0.8552734,
        size.height * 0.1832031);
    path_13.cubicTo(
        size.width * 0.8552734,
        size.height * 0.1857422,
        size.width * 0.8533203,
        size.height * 0.1875000,
        size.width * 0.8503906,
        size.height * 0.1875000);
    path_13.cubicTo(
        size.width * 0.8474609,
        size.height * 0.1875000,
        size.width * 0.8455078,
        size.height * 0.1855469,
        size.width * 0.8455078,
        size.height * 0.1832031);
    path_13.cubicTo(
        size.width * 0.8453125,
        size.height * 0.1806641,
        size.width * 0.8472656,
        size.height * 0.1789062,
        size.width * 0.8501953,
        size.height * 0.1789062);
    path_13.close();
    path_13.moveTo(size.width * 0.8503906, size.height * 0.1863281);
    path_13.cubicTo(
        size.width * 0.8523437,
        size.height * 0.1863281,
        size.width * 0.8542969,
        size.height * 0.1851563,
        size.width * 0.8542969,
        size.height * 0.1833984);
    path_13.cubicTo(
        size.width * 0.8542969,
        size.height * 0.1814453,
        size.width * 0.8525391,
        size.height * 0.1802734,
        size.width * 0.8503906,
        size.height * 0.1802734);
    path_13.cubicTo(
        size.width * 0.8484375,
        size.height * 0.1802734,
        size.width * 0.8464844,
        size.height * 0.1812500,
        size.width * 0.8464844,
        size.height * 0.1832031);
    path_13.cubicTo(
        size.width * 0.8462891,
        size.height * 0.1853516,
        size.width * 0.8482422,
        size.height * 0.1863281,
        size.width * 0.8503906,
        size.height * 0.1863281);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.8544922, size.height * 0.1701172);
    path_14.cubicTo(
        size.width * 0.8546875,
        size.height * 0.1707031,
        size.width * 0.8550781,
        size.height * 0.1716797,
        size.width * 0.8550781,
        size.height * 0.1730469);
    path_14.cubicTo(
        size.width * 0.8550781,
        size.height * 0.1744141,
        size.width * 0.8546875,
        size.height * 0.1755859,
        size.width * 0.8539062,
        size.height * 0.1765625);
    path_14.cubicTo(
        size.width * 0.8531250,
        size.height * 0.1773437,
        size.width * 0.8519531,
        size.height * 0.1779297,
        size.width * 0.8503906,
        size.height * 0.1779297);
    path_14.cubicTo(
        size.width * 0.8476563,
        size.height * 0.1779297,
        size.width * 0.8455078,
        size.height * 0.1759766,
        size.width * 0.8455078,
        size.height * 0.1728516);
    path_14.cubicTo(
        size.width * 0.8455078,
        size.height * 0.1716797,
        size.width * 0.8457031,
        size.height * 0.1708984,
        size.width * 0.8458984,
        size.height * 0.1705078);
    path_14.lineTo(size.width * 0.8468750, size.height * 0.1708984);
    path_14.cubicTo(
        size.width * 0.8466797,
        size.height * 0.1714844,
        size.width * 0.8464844,
        size.height * 0.1720703,
        size.width * 0.8464844,
        size.height * 0.1730469);
    path_14.cubicTo(
        size.width * 0.8464844,
        size.height * 0.1753906,
        size.width * 0.8478516,
        size.height * 0.1767578,
        size.width * 0.8501953,
        size.height * 0.1767578);
    path_14.cubicTo(
        size.width * 0.8525391,
        size.height * 0.1767578,
        size.width * 0.8541016,
        size.height * 0.1753906,
        size.width * 0.8541016,
        size.height * 0.1730469);
    path_14.cubicTo(
        size.width * 0.8541016,
        size.height * 0.1722656,
        size.width * 0.8539062,
        size.height * 0.1716797,
        size.width * 0.8539062,
        size.height * 0.1714844);
    path_14.lineTo(size.width * 0.8511719, size.height * 0.1714844);
    path_14.lineTo(size.width * 0.8511719, size.height * 0.1734375);
    path_14.lineTo(size.width * 0.8501953, size.height * 0.1734375);
    path_14.lineTo(size.width * 0.8501953, size.height * 0.1703125);
    path_14.lineTo(size.width * 0.8544922, size.height * 0.1703125);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.8501953, size.height * 0.1601563);
    path_15.cubicTo(
        size.width * 0.8535156,
        size.height * 0.1601563,
        size.width * 0.8552734,
        size.height * 0.1621094,
        size.width * 0.8552734,
        size.height * 0.1644531);
    path_15.cubicTo(
        size.width * 0.8552734,
        size.height * 0.1669922,
        size.width * 0.8533203,
        size.height * 0.1687500,
        size.width * 0.8503906,
        size.height * 0.1687500);
    path_15.cubicTo(
        size.width * 0.8474609,
        size.height * 0.1687500,
        size.width * 0.8455078,
        size.height * 0.1667969,
        size.width * 0.8455078,
        size.height * 0.1644531);
    path_15.cubicTo(
        size.width * 0.8453125,
        size.height * 0.1619141,
        size.width * 0.8472656,
        size.height * 0.1601563,
        size.width * 0.8501953,
        size.height * 0.1601563);
    path_15.close();
    path_15.moveTo(size.width * 0.8503906, size.height * 0.1675781);
    path_15.cubicTo(
        size.width * 0.8523437,
        size.height * 0.1675781,
        size.width * 0.8542969,
        size.height * 0.1664063,
        size.width * 0.8542969,
        size.height * 0.1646484);
    path_15.cubicTo(
        size.width * 0.8542969,
        size.height * 0.1626953,
        size.width * 0.8525391,
        size.height * 0.1615234,
        size.width * 0.8503906,
        size.height * 0.1615234);
    path_15.cubicTo(
        size.width * 0.8484375,
        size.height * 0.1615234,
        size.width * 0.8464844,
        size.height * 0.1625000,
        size.width * 0.8464844,
        size.height * 0.1644531);
    path_15.cubicTo(
        size.width * 0.8462891,
        size.height * 0.1666016,
        size.width * 0.8482422,
        size.height * 0.1675781,
        size.width * 0.8503906,
        size.height * 0.1675781);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.7318359, size.height * 0.8837891);
    path_16.lineTo(size.width * 0.7318359, size.height * 0.9187500);
    path_16.lineTo(size.width * 0.7740234, size.height * 0.9187500);
    path_16.lineTo(size.width * 0.7740234, size.height * 0.8837891);
    path_16.lineTo(size.width * 0.7318359, size.height * 0.8837891);
    path_16.close();
    path_16.moveTo(size.width * 0.7730469, size.height * 0.9177734);
    path_16.lineTo(size.width * 0.7328125, size.height * 0.9177734);
    path_16.lineTo(size.width * 0.7328125, size.height * 0.8847656);
    path_16.lineTo(size.width * 0.7730469, size.height * 0.8847656);
    path_16.lineTo(size.width * 0.7730469, size.height * 0.9177734);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.7363281, size.height * 0.8966797);
    path_17.lineTo(size.width * 0.7375000, size.height * 0.8966797);
    path_17.lineTo(size.width * 0.7375000, size.height * 0.9050781);
    path_17.lineTo(size.width * 0.7416016, size.height * 0.9050781);
    path_17.lineTo(size.width * 0.7416016, size.height * 0.9060547);
    path_17.lineTo(size.width * 0.7363281, size.height * 0.9060547);
    path_17.lineTo(size.width * 0.7363281, size.height * 0.8966797);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.7505859, size.height * 0.9011719);
    path_18.cubicTo(
        size.width * 0.7505859,
        size.height * 0.9044922,
        size.width * 0.7486328,
        size.height * 0.9062500,
        size.width * 0.7462891,
        size.height * 0.9062500);
    path_18.cubicTo(
        size.width * 0.7437500,
        size.height * 0.9062500,
        size.width * 0.7419922,
        size.height * 0.9042969,
        size.width * 0.7419922,
        size.height * 0.9013672);
    path_18.cubicTo(
        size.width * 0.7419922,
        size.height * 0.8984375,
        size.width * 0.7439453,
        size.height * 0.8964844,
        size.width * 0.7462891,
        size.height * 0.8964844);
    path_18.cubicTo(
        size.width * 0.7488281,
        size.height * 0.8964844,
        size.width * 0.7505859,
        size.height * 0.8984375,
        size.width * 0.7505859,
        size.height * 0.9011719);
    path_18.close();
    path_18.moveTo(size.width * 0.7431641, size.height * 0.9013672);
    path_18.cubicTo(
        size.width * 0.7431641,
        size.height * 0.9033203,
        size.width * 0.7443359,
        size.height * 0.9052734,
        size.width * 0.7460938,
        size.height * 0.9052734);
    path_18.cubicTo(
        size.width * 0.7480469,
        size.height * 0.9052734,
        size.width * 0.7492188,
        size.height * 0.9035156,
        size.width * 0.7492188,
        size.height * 0.9013672);
    path_18.cubicTo(
        size.width * 0.7492188,
        size.height * 0.8994141,
        size.width * 0.7482422,
        size.height * 0.8974609,
        size.width * 0.7462891,
        size.height * 0.8974609);
    path_18.cubicTo(
        size.width * 0.7443359,
        size.height * 0.8974609,
        size.width * 0.7431641,
        size.height * 0.8992187,
        size.width * 0.7431641,
        size.height * 0.9013672);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.7593750, size.height * 0.9056641);
    path_19.cubicTo(
        size.width * 0.7587891,
        size.height * 0.9058594,
        size.width * 0.7578125,
        size.height * 0.9062500,
        size.width * 0.7564453,
        size.height * 0.9062500);
    path_19.cubicTo(
        size.width * 0.7550781,
        size.height * 0.9062500,
        size.width * 0.7539063,
        size.height * 0.9058594,
        size.width * 0.7529297,
        size.height * 0.9050781);
    path_19.cubicTo(
        size.width * 0.7521484,
        size.height * 0.9042969,
        size.width * 0.7515625,
        size.height * 0.9031250,
        size.width * 0.7515625,
        size.height * 0.9015625);
    path_19.cubicTo(
        size.width * 0.7515625,
        size.height * 0.8988281,
        size.width * 0.7535156,
        size.height * 0.8966797,
        size.width * 0.7566406,
        size.height * 0.8966797);
    path_19.cubicTo(
        size.width * 0.7578125,
        size.height * 0.8966797,
        size.width * 0.7585938,
        size.height * 0.8968750,
        size.width * 0.7589844,
        size.height * 0.8970703);
    path_19.lineTo(size.width * 0.7585938, size.height * 0.8980469);
    path_19.cubicTo(
        size.width * 0.7580078,
        size.height * 0.8978516,
        size.width * 0.7574219,
        size.height * 0.8976562,
        size.width * 0.7564453,
        size.height * 0.8976562);
    path_19.cubicTo(
        size.width * 0.7541016,
        size.height * 0.8976562,
        size.width * 0.7527344,
        size.height * 0.8990234,
        size.width * 0.7527344,
        size.height * 0.9013672);
    path_19.cubicTo(
        size.width * 0.7527344,
        size.height * 0.9037109,
        size.width * 0.7541016,
        size.height * 0.9052734,
        size.width * 0.7564453,
        size.height * 0.9052734);
    path_19.cubicTo(
        size.width * 0.7572266,
        size.height * 0.9052734,
        size.width * 0.7578125,
        size.height * 0.9050781,
        size.width * 0.7580078,
        size.height * 0.9050781);
    path_19.lineTo(size.width * 0.7580078, size.height * 0.9023437);
    path_19.lineTo(size.width * 0.7560547, size.height * 0.9023437);
    path_19.lineTo(size.width * 0.7560547, size.height * 0.9013672);
    path_19.lineTo(size.width * 0.7591797, size.height * 0.9013672);
    path_19.lineTo(size.width * 0.7591797, size.height * 0.9056641);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.7693359, size.height * 0.9011719);
    path_20.cubicTo(
        size.width * 0.7693359,
        size.height * 0.9044922,
        size.width * 0.7673828,
        size.height * 0.9062500,
        size.width * 0.7650391,
        size.height * 0.9062500);
    path_20.cubicTo(
        size.width * 0.7625000,
        size.height * 0.9062500,
        size.width * 0.7607422,
        size.height * 0.9042969,
        size.width * 0.7607422,
        size.height * 0.9013672);
    path_20.cubicTo(
        size.width * 0.7607422,
        size.height * 0.8984375,
        size.width * 0.7626953,
        size.height * 0.8964844,
        size.width * 0.7650391,
        size.height * 0.8964844);
    path_20.cubicTo(
        size.width * 0.7675781,
        size.height * 0.8964844,
        size.width * 0.7693359,
        size.height * 0.8984375,
        size.width * 0.7693359,
        size.height * 0.9011719);
    path_20.close();
    path_20.moveTo(size.width * 0.7619141, size.height * 0.9013672);
    path_20.cubicTo(
        size.width * 0.7619141,
        size.height * 0.9033203,
        size.width * 0.7630859,
        size.height * 0.9052734,
        size.width * 0.7648438,
        size.height * 0.9052734);
    path_20.cubicTo(
        size.width * 0.7667969,
        size.height * 0.9052734,
        size.width * 0.7679688,
        size.height * 0.9035156,
        size.width * 0.7679688,
        size.height * 0.9013672);
    path_20.cubicTo(
        size.width * 0.7679688,
        size.height * 0.8994141,
        size.width * 0.7669922,
        size.height * 0.8974609,
        size.width * 0.7650391,
        size.height * 0.8974609);
    path_20.cubicTo(
        size.width * 0.7628906,
        size.height * 0.8974609,
        size.width * 0.7619141,
        size.height * 0.8992187,
        size.width * 0.7619141,
        size.height * 0.9013672);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.5767578, size.height * 0.1560547);
    path_21.lineTo(size.width * 0.5767578, size.height * 0.1974609);
    path_21.lineTo(size.width * 0.6111328, size.height * 0.1974609);
    path_21.lineTo(size.width * 0.6111328, size.height * 0.1560547);
    path_21.lineTo(size.width * 0.5767578, size.height * 0.1560547);
    path_21.close();
    path_21.moveTo(size.width * 0.6101562, size.height * 0.1964844);
    path_21.lineTo(size.width * 0.5777344, size.height * 0.1964844);
    path_21.lineTo(size.width * 0.5777344, size.height * 0.1570313);
    path_21.lineTo(size.width * 0.6101562, size.height * 0.1570313);
    path_21.lineTo(size.width * 0.6101562, size.height * 0.1964844);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.5892578, size.height * 0.1931641);
    path_22.lineTo(size.width * 0.5892578, size.height * 0.1919922);
    path_22.lineTo(size.width * 0.5976563, size.height * 0.1919922);
    path_22.lineTo(size.width * 0.5976563, size.height * 0.1878906);
    path_22.lineTo(size.width * 0.5986328, size.height * 0.1878906);
    path_22.lineTo(size.width * 0.5986328, size.height * 0.1931641);
    path_22.lineTo(size.width * 0.5892578, size.height * 0.1931641);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.5939453, size.height * 0.1789062);
    path_23.cubicTo(
        size.width * 0.5972656,
        size.height * 0.1789062,
        size.width * 0.5990234,
        size.height * 0.1808594,
        size.width * 0.5990234,
        size.height * 0.1832031);
    path_23.cubicTo(
        size.width * 0.5990234,
        size.height * 0.1857422,
        size.width * 0.5970703,
        size.height * 0.1875000,
        size.width * 0.5941406,
        size.height * 0.1875000);
    path_23.cubicTo(
        size.width * 0.5912109,
        size.height * 0.1875000,
        size.width * 0.5892578,
        size.height * 0.1855469,
        size.width * 0.5892578,
        size.height * 0.1832031);
    path_23.cubicTo(
        size.width * 0.5890625,
        size.height * 0.1806641,
        size.width * 0.5910156,
        size.height * 0.1789062,
        size.width * 0.5939453,
        size.height * 0.1789062);
    path_23.close();
    path_23.moveTo(size.width * 0.5939453, size.height * 0.1863281);
    path_23.cubicTo(
        size.width * 0.5958984,
        size.height * 0.1863281,
        size.width * 0.5978516,
        size.height * 0.1851563,
        size.width * 0.5978516,
        size.height * 0.1833984);
    path_23.cubicTo(
        size.width * 0.5978516,
        size.height * 0.1814453,
        size.width * 0.5960938,
        size.height * 0.1802734,
        size.width * 0.5939453,
        size.height * 0.1802734);
    path_23.cubicTo(
        size.width * 0.5919922,
        size.height * 0.1802734,
        size.width * 0.5900391,
        size.height * 0.1812500,
        size.width * 0.5900391,
        size.height * 0.1832031);
    path_23.cubicTo(
        size.width * 0.5900391,
        size.height * 0.1853516,
        size.width * 0.5919922,
        size.height * 0.1863281,
        size.width * 0.5939453,
        size.height * 0.1863281);
    path_23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.5982422, size.height * 0.1701172);
    path_24.cubicTo(
        size.width * 0.5984375,
        size.height * 0.1707031,
        size.width * 0.5988281,
        size.height * 0.1716797,
        size.width * 0.5988281,
        size.height * 0.1730469);
    path_24.cubicTo(
        size.width * 0.5988281,
        size.height * 0.1744141,
        size.width * 0.5984375,
        size.height * 0.1755859,
        size.width * 0.5976563,
        size.height * 0.1765625);
    path_24.cubicTo(
        size.width * 0.5968750,
        size.height * 0.1773437,
        size.width * 0.5957031,
        size.height * 0.1779297,
        size.width * 0.5941406,
        size.height * 0.1779297);
    path_24.cubicTo(
        size.width * 0.5914063,
        size.height * 0.1779297,
        size.width * 0.5892578,
        size.height * 0.1759766,
        size.width * 0.5892578,
        size.height * 0.1728516);
    path_24.cubicTo(
        size.width * 0.5892578,
        size.height * 0.1716797,
        size.width * 0.5894531,
        size.height * 0.1708984,
        size.width * 0.5896484,
        size.height * 0.1705078);
    path_24.lineTo(size.width * 0.5906250, size.height * 0.1708984);
    path_24.cubicTo(
        size.width * 0.5904297,
        size.height * 0.1714844,
        size.width * 0.5902344,
        size.height * 0.1720703,
        size.width * 0.5902344,
        size.height * 0.1730469);
    path_24.cubicTo(
        size.width * 0.5902344,
        size.height * 0.1753906,
        size.width * 0.5916016,
        size.height * 0.1767578,
        size.width * 0.5939453,
        size.height * 0.1767578);
    path_24.cubicTo(
        size.width * 0.5962891,
        size.height * 0.1767578,
        size.width * 0.5978516,
        size.height * 0.1753906,
        size.width * 0.5978516,
        size.height * 0.1730469);
    path_24.cubicTo(
        size.width * 0.5978516,
        size.height * 0.1722656,
        size.width * 0.5976562,
        size.height * 0.1716797,
        size.width * 0.5976562,
        size.height * 0.1714844);
    path_24.lineTo(size.width * 0.5949219, size.height * 0.1714844);
    path_24.lineTo(size.width * 0.5949219, size.height * 0.1734375);
    path_24.lineTo(size.width * 0.5937500, size.height * 0.1734375);
    path_24.lineTo(size.width * 0.5937500, size.height * 0.1703125);
    path_24.lineTo(size.width * 0.5982422, size.height * 0.1703125);
    path_24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.5939453, size.height * 0.1601563);
    path_25.cubicTo(
        size.width * 0.5972656,
        size.height * 0.1601563,
        size.width * 0.5990234,
        size.height * 0.1621094,
        size.width * 0.5990234,
        size.height * 0.1644531);
    path_25.cubicTo(
        size.width * 0.5990234,
        size.height * 0.1669922,
        size.width * 0.5970703,
        size.height * 0.1687500,
        size.width * 0.5941406,
        size.height * 0.1687500);
    path_25.cubicTo(
        size.width * 0.5912109,
        size.height * 0.1687500,
        size.width * 0.5892578,
        size.height * 0.1667969,
        size.width * 0.5892578,
        size.height * 0.1644531);
    path_25.cubicTo(
        size.width * 0.5890625,
        size.height * 0.1619141,
        size.width * 0.5910156,
        size.height * 0.1601563,
        size.width * 0.5939453,
        size.height * 0.1601563);
    path_25.close();
    path_25.moveTo(size.width * 0.5939453, size.height * 0.1675781);
    path_25.cubicTo(
        size.width * 0.5958984,
        size.height * 0.1675781,
        size.width * 0.5978516,
        size.height * 0.1664063,
        size.width * 0.5978516,
        size.height * 0.1646484);
    path_25.cubicTo(
        size.width * 0.5978516,
        size.height * 0.1626953,
        size.width * 0.5960938,
        size.height * 0.1615234,
        size.width * 0.5939453,
        size.height * 0.1615234);
    path_25.cubicTo(
        size.width * 0.5919922,
        size.height * 0.1615234,
        size.width * 0.5900391,
        size.height * 0.1625000,
        size.width * 0.5900391,
        size.height * 0.1644531);
    path_25.cubicTo(
        size.width * 0.5900391,
        size.height * 0.1666016,
        size.width * 0.5919922,
        size.height * 0.1675781,
        size.width * 0.5939453,
        size.height * 0.1675781);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.7642578, size.height * 0.4392578);
    path_26.cubicTo(
        size.width * 0.7638672,
        size.height * 0.4373047,
        size.width * 0.7636719,
        size.height * 0.4349609,
        size.width * 0.7636719,
        size.height * 0.4318359);
    path_26.cubicTo(
        size.width * 0.7636719,
        size.height * 0.4279297,
        size.width * 0.7646484,
        size.height * 0.4251953,
        size.width * 0.7662109,
        size.height * 0.4234375);
    path_26.cubicTo(
        size.width * 0.7675781,
        size.height * 0.4216797,
        size.width * 0.7699219,
        size.height * 0.4207031,
        size.width * 0.7724609,
        size.height * 0.4207031);
    path_26.cubicTo(
        size.width * 0.7751953,
        size.height * 0.4207031,
        size.width * 0.7773438,
        size.height * 0.4214844,
        size.width * 0.7789063,
        size.height * 0.4230469);
    path_26.cubicTo(
        size.width * 0.7810547,
        size.height * 0.4251953,
        size.width * 0.7822266,
        size.height * 0.4285156,
        size.width * 0.7822266,
        size.height * 0.4322266);
    path_26.cubicTo(
        size.width * 0.7822266,
        size.height * 0.4333984,
        size.width * 0.7822266,
        size.height * 0.4345703,
        size.width * 0.7820312,
        size.height * 0.4353516);
    path_26.lineTo(size.width * 0.7941406, size.height * 0.4353516);
    path_26.lineTo(size.width * 0.7941406, size.height * 0.4392578);
    path_26.lineTo(size.width * 0.7642578, size.height * 0.4392578);
    path_26.close();
    path_26.moveTo(size.width * 0.7789063, size.height * 0.4353516);
    path_26.cubicTo(
        size.width * 0.7791016,
        size.height * 0.4345703,
        size.width * 0.7792969,
        size.height * 0.4333984,
        size.width * 0.7792969,
        size.height * 0.4320313);
    path_26.cubicTo(
        size.width * 0.7792969,
        size.height * 0.4273438,
        size.width * 0.7769531,
        size.height * 0.4244141,
        size.width * 0.7728516,
        size.height * 0.4244141);
    path_26.cubicTo(
        size.width * 0.7689453,
        size.height * 0.4244141,
        size.width * 0.7669922,
        size.height * 0.4271484,
        size.width * 0.7669922,
        size.height * 0.4316406);
    path_26.cubicTo(
        size.width * 0.7669922,
        size.height * 0.4333984,
        size.width * 0.7671875,
        size.height * 0.4345703,
        size.width * 0.7673828,
        size.height * 0.4353516);
    path_26.lineTo(size.width * 0.7789063, size.height * 0.4353516);
    path_26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.7642578, size.height * 0.4154297);
    path_27.cubicTo(
        size.width * 0.7638672,
        size.height * 0.4134766,
        size.width * 0.7636719,
        size.height * 0.4105469,
        size.width * 0.7636719,
        size.height * 0.4080078);
    path_27.cubicTo(
        size.width * 0.7636719,
        size.height * 0.4039062,
        size.width * 0.7644531,
        size.height * 0.4011719,
        size.width * 0.7662109,
        size.height * 0.3992187);
    path_27.cubicTo(
        size.width * 0.7675781,
        size.height * 0.3976562,
        size.width * 0.7695313,
        size.height * 0.3968750,
        size.width * 0.7718750,
        size.height * 0.3968750);
    path_27.cubicTo(
        size.width * 0.7757812,
        size.height * 0.3968750,
        size.width * 0.7785156,
        size.height * 0.3994141,
        size.width * 0.7796875,
        size.height * 0.4025391);
    path_27.lineTo(size.width * 0.7798828, size.height * 0.4025391);
    path_27.cubicTo(
        size.width * 0.7806641,
        size.height * 0.4001953,
        size.width * 0.7828125,
        size.height * 0.3988281,
        size.width * 0.7859375,
        size.height * 0.3980469);
    path_27.cubicTo(
        size.width * 0.7902344,
        size.height * 0.3970703,
        size.width * 0.7931641,
        size.height * 0.3962891,
        size.width * 0.7943359,
        size.height * 0.3957031);
    path_27.lineTo(size.width * 0.7943359, size.height * 0.3998047);
    path_27.cubicTo(
        size.width * 0.7935547,
        size.height * 0.4003906,
        size.width * 0.7908203,
        size.height * 0.4009766,
        size.width * 0.7871094,
        size.height * 0.4017578);
    path_27.cubicTo(
        size.width * 0.7830078,
        size.height * 0.4027344,
        size.width * 0.7814453,
        size.height * 0.4042969,
        size.width * 0.7812500,
        size.height * 0.4078125);
    path_27.lineTo(size.width * 0.7812500, size.height * 0.4115234);
    path_27.lineTo(size.width * 0.7943359, size.height * 0.4115234);
    path_27.lineTo(size.width * 0.7943359, size.height * 0.4154297);
    path_27.lineTo(size.width * 0.7642578, size.height * 0.4154297);
    path_27.close();
    path_27.moveTo(size.width * 0.7781250, size.height * 0.4115234);
    path_27.lineTo(size.width * 0.7781250, size.height * 0.4076172);
    path_27.cubicTo(
        size.width * 0.7781250,
        size.height * 0.4035156,
        size.width * 0.7757812,
        size.height * 0.4007812,
        size.width * 0.7724609,
        size.height * 0.4007812);
    path_27.cubicTo(
        size.width * 0.7685547,
        size.height * 0.4007812,
        size.width * 0.7667969,
        size.height * 0.4035156,
        size.width * 0.7667969,
        size.height * 0.4078125);
    path_27.cubicTo(
        size.width * 0.7667969,
        size.height * 0.4097656,
        size.width * 0.7669922,
        size.height * 0.4111328,
        size.width * 0.7671875,
        size.height * 0.4117187);
    path_27.lineTo(size.width * 0.7781250, size.height * 0.4117187);
    path_27.close();

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_27, paint27Fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.7787109, size.height * 0.3652344);
    path_28.cubicTo(
        size.width * 0.7890625,
        size.height * 0.3652344,
        size.width * 0.7947266,
        size.height * 0.3714844,
        size.width * 0.7947266,
        size.height * 0.3792969);
    path_28.cubicTo(
        size.width * 0.7947266,
        size.height * 0.3873047,
        size.width * 0.7884766,
        size.height * 0.3929687,
        size.width * 0.7792969,
        size.height * 0.3929687);
    path_28.cubicTo(
        size.width * 0.7697266,
        size.height * 0.3929687,
        size.width * 0.7634766,
        size.height * 0.3869141,
        size.width * 0.7634766,
        size.height * 0.3789063);
    path_28.cubicTo(
        size.width * 0.7634766,
        size.height * 0.3705078,
        size.width * 0.7697266,
        size.height * 0.3652344,
        size.width * 0.7787109,
        size.height * 0.3652344);
    path_28.close();
    path_28.moveTo(size.width * 0.7792969, size.height * 0.3886719);
    path_28.cubicTo(
        size.width * 0.7857422,
        size.height * 0.3886719,
        size.width * 0.7916016,
        size.height * 0.3851562,
        size.width * 0.7916016,
        size.height * 0.3791016);
    path_28.cubicTo(
        size.width * 0.7916016,
        size.height * 0.3728516,
        size.width * 0.7859375,
        size.height * 0.3693359,
        size.width * 0.7791016,
        size.height * 0.3693359);
    path_28.cubicTo(
        size.width * 0.7730469,
        size.height * 0.3693359,
        size.width * 0.7667969,
        size.height * 0.3724609,
        size.width * 0.7667969,
        size.height * 0.3789063);
    path_28.cubicTo(
        size.width * 0.7666016,
        size.height * 0.3855469,
        size.width * 0.7726563,
        size.height * 0.3886719,
        size.width * 0.7792969,
        size.height * 0.3886719);
    path_28.close();

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_28, paint28Fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.7808594, size.height * 0.3345703);
    path_29.cubicTo(
        size.width * 0.7765625,
        size.height * 0.3347656,
        size.width * 0.7714844,
        size.height * 0.3351563,
        size.width * 0.7677734,
        size.height * 0.3349609);
    path_29.lineTo(size.width * 0.7677734, size.height * 0.3351562);
    path_29.cubicTo(
        size.width * 0.7712891,
        size.height * 0.3361328,
        size.width * 0.7750000,
        size.height * 0.3375000,
        size.width * 0.7792969,
        size.height * 0.3390625);
    path_29.lineTo(size.width * 0.7939453, size.height * 0.3443359);
    path_29.lineTo(size.width * 0.7939453, size.height * 0.3472656);
    path_29.lineTo(size.width * 0.7794922, size.height * 0.3521484);
    path_29.cubicTo(
        size.width * 0.7751953,
        size.height * 0.3535156,
        size.width * 0.7712891,
        size.height * 0.3548828,
        size.width * 0.7677734,
        size.height * 0.3556641);
    path_29.lineTo(size.width * 0.7677734, size.height * 0.3556641);
    path_29.cubicTo(
        size.width * 0.7714844,
        size.height * 0.3556641,
        size.width * 0.7765625,
        size.height * 0.3560547,
        size.width * 0.7812500,
        size.height * 0.3562500);
    path_29.lineTo(size.width * 0.7941406, size.height * 0.3570313);
    path_29.lineTo(size.width * 0.7941406, size.height * 0.3607422);
    path_29.lineTo(size.width * 0.7638672, size.height * 0.3585938);
    path_29.lineTo(size.width * 0.7638672, size.height * 0.3535156);
    path_29.lineTo(size.width * 0.7785156, size.height * 0.3484375);
    path_29.cubicTo(
        size.width * 0.7822266,
        size.height * 0.3472656,
        size.width * 0.7855469,
        size.height * 0.3460938,
        size.width * 0.7886719,
        size.height * 0.3453125);
    path_29.lineTo(size.width * 0.7886719, size.height * 0.3451172);
    path_29.cubicTo(
        size.width * 0.7855469,
        size.height * 0.3443359,
        size.width * 0.7822266,
        size.height * 0.3433594,
        size.width * 0.7785156,
        size.height * 0.3419922);
    path_29.lineTo(size.width * 0.7638672, size.height * 0.3365234);
    path_29.lineTo(size.width * 0.7638672, size.height * 0.3320313);
    path_29.lineTo(size.width * 0.7941406, size.height * 0.3300781);
    path_29.lineTo(size.width * 0.7941406, size.height * 0.3339844);
    path_29.lineTo(size.width * 0.7808594, size.height * 0.3345703);
    path_29.close();

    Paint paint29Fill = Paint()..style = PaintingStyle.fill;
    paint29Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_29, paint29Fill);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.7787109, size.height * 0.2982422);
    path_30.cubicTo(
        size.width * 0.7890625,
        size.height * 0.2982422,
        size.width * 0.7947266,
        size.height * 0.3044922,
        size.width * 0.7947266,
        size.height * 0.3123047);
    path_30.cubicTo(
        size.width * 0.7947266,
        size.height * 0.3203125,
        size.width * 0.7884766,
        size.height * 0.3259766,
        size.width * 0.7792969,
        size.height * 0.3259766);
    path_30.cubicTo(
        size.width * 0.7697266,
        size.height * 0.3259766,
        size.width * 0.7634766,
        size.height * 0.3199219,
        size.width * 0.7634766,
        size.height * 0.3119141);
    path_30.cubicTo(
        size.width * 0.7634766,
        size.height * 0.3035156,
        size.width * 0.7697266,
        size.height * 0.2982422,
        size.width * 0.7787109,
        size.height * 0.2982422);
    path_30.close();
    path_30.moveTo(size.width * 0.7792969, size.height * 0.3216797);
    path_30.cubicTo(
        size.width * 0.7857422,
        size.height * 0.3216797,
        size.width * 0.7916016,
        size.height * 0.3181641,
        size.width * 0.7916016,
        size.height * 0.3121094);
    path_30.cubicTo(
        size.width * 0.7916016,
        size.height * 0.3058594,
        size.width * 0.7859375,
        size.height * 0.3023437,
        size.width * 0.7791016,
        size.height * 0.3023437);
    path_30.cubicTo(
        size.width * 0.7730469,
        size.height * 0.3023437,
        size.width * 0.7667969,
        size.height * 0.3054687,
        size.width * 0.7667969,
        size.height * 0.3119141);
    path_30.cubicTo(
        size.width * 0.7666016,
        size.height * 0.3183594,
        size.width * 0.7726563,
        size.height * 0.3216797,
        size.width * 0.7792969,
        size.height * 0.3216797);
    path_30.close();

    Paint paint30Fill = Paint()..style = PaintingStyle.fill;
    paint30Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_30, paint30Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
