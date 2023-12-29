//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class ShortNumberColor extends CustomPainter {
  final Color color;
  ShortNumberColor({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.9156836, size.height * 0.8318750,
            size.width * 0.03939453, size.height * 0.04148437),
        paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9039648, size.height * 0.7675391);
    path_1.cubicTo(
        size.width * 0.9025391,
        size.height * 0.7675391,
        size.width * 0.9011914,
        size.height * 0.7670703,
        size.width * 0.9002539,
        size.height * 0.7665039);
    path_1.lineTo(size.width * 0.8997266, size.height * 0.7682422);
    path_1.cubicTo(
        size.width * 0.9005859,
        size.height * 0.7688086,
        size.width * 0.9022656,
        size.height * 0.7692578,
        size.width * 0.9038086,
        size.height * 0.7692578);
    path_1.cubicTo(
        size.width * 0.9075781,
        size.height * 0.7692578,
        size.width * 0.9094141,
        size.height * 0.7671289,
        size.width * 0.9094141,
        size.height * 0.7646484);
    path_1.cubicTo(
        size.width * 0.9094141,
        size.height * 0.7623047,
        size.width * 0.9080469,
        size.height * 0.7609961,
        size.width * 0.9053320,
        size.height * 0.7599414);
    path_1.cubicTo(
        size.width * 0.9035156,
        size.height * 0.7592383,
        size.width * 0.9025391,
        size.height * 0.7586133,
        size.width * 0.9022461,
        size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9122461, size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9122461, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9143164, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9143164, size.height * 0.7615234);
    path_1.lineTo(size.width * 0.9220508, size.height * 0.7615234);
    path_1.lineTo(size.width * 0.9220508, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9241406, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9241406, size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9274023, size.height * 0.7575781);
    path_1.cubicTo(
        size.width * 0.9270117,
        size.height * 0.7586328,
        size.width * 0.9267773,
        size.height * 0.7598438,
        size.width * 0.9267773,
        size.height * 0.7611719);
    path_1.cubicTo(
        size.width * 0.9267773,
        size.height * 0.7660156,
        size.width * 0.9297461,
        size.height * 0.7692969,
        size.width * 0.9339648,
        size.height * 0.7692969);
    path_1.cubicTo(
        size.width * 0.9380469,
        size.height * 0.7692969,
        size.width * 0.9414063,
        size.height * 0.7663867,
        size.width * 0.9414063,
        size.height * 0.7608594);
    path_1.cubicTo(
        size.width * 0.9414063,
        size.height * 0.7596680,
        size.width * 0.9412305,
        size.height * 0.7585742,
        size.width * 0.9408984,
        size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9440820, size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9440820, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9461523, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9461523, size.height * 0.7620898);
    path_1.lineTo(size.width * 0.9481055, size.height * 0.7620898);
    path_1.cubicTo(
        size.width * 0.9499805,
        size.height * 0.7621680,
        size.width * 0.9508398,
        size.height * 0.7629883,
        size.width * 0.9513086,
        size.height * 0.7651953);
    path_1.cubicTo(
        size.width * 0.9517578,
        size.height * 0.7671875,
        size.width * 0.9521094,
        size.height * 0.7685742,
        size.width * 0.9523828,
        size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9545117, size.height * 0.7690234);
    path_1.cubicTo(
        size.width * 0.9541797,
        size.height * 0.7683984,
        size.width * 0.9537891,
        size.height * 0.7668555,
        size.width * 0.9532813,
        size.height * 0.7646289);
    path_1.cubicTo(
        size.width * 0.9529102,
        size.height * 0.7629687,
        size.width * 0.9521680,
        size.height * 0.7618164,
        size.width * 0.9509375,
        size.height * 0.7614062);
    path_1.lineTo(size.width * 0.9509375, size.height * 0.7613281);
    path_1.cubicTo(
        size.width * 0.9525391,
        size.height * 0.7607812,
        size.width * 0.9537891,
        size.height * 0.7594922,
        size.width * 0.9539258,
        size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9601172, size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9601172, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9622070, size.height * 0.7690234);
    path_1.lineTo(size.width * 0.9622070, size.height * 0.7547656);
    path_1.lineTo(size.width * 0.9671094, size.height * 0.7547656);
    path_1.lineTo(size.width * 0.9671094, size.height * 0.7530078);
    path_1.lineTo(size.width * 0.9552539, size.height * 0.7530078);
    path_1.lineTo(size.width * 0.9552539, size.height * 0.7547656);
    path_1.lineTo(size.width * 0.9601172, size.height * 0.7547656);
    path_1.lineTo(size.width * 0.9601172, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9539258, size.height * 0.7575586);
    path_1.cubicTo(
        size.width * 0.9539258,
        size.height * 0.7574609,
        size.width * 0.9539453,
        size.height * 0.7573633,
        size.width * 0.9539453,
        size.height * 0.7572461);
    path_1.cubicTo(
        size.width * 0.9539453,
        size.height * 0.7560156,
        size.width * 0.9534961,
        size.height * 0.7549219,
        size.width * 0.9526953,
        size.height * 0.7541992);
    path_1.cubicTo(
        size.width * 0.9516992,
        size.height * 0.7533008,
        size.width * 0.9502734,
        size.height * 0.7528906,
        size.width * 0.9480664,
        size.height * 0.7528906);
    path_1.cubicTo(
        size.width * 0.9466406,
        size.height * 0.7528906,
        size.width * 0.9451367,
        size.height * 0.7530078,
        size.width * 0.9441016,
        size.height * 0.7532227);
    path_1.lineTo(size.width * 0.9441016, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9408984, size.height * 0.7575586);
    path_1.cubicTo(
        size.width * 0.9398828,
        size.height * 0.7546289,
        size.width * 0.9374805,
        size.height * 0.7527539,
        size.width * 0.9342188,
        size.height * 0.7527539);
    path_1.cubicTo(
        size.width * 0.9310742,
        size.height * 0.7527539,
        size.width * 0.9285352,
        size.height * 0.7545703,
        size.width * 0.9274219,
        size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9241602, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9241602, size.height * 0.7530078);
    path_1.lineTo(size.width * 0.9220703, size.height * 0.7530078);
    path_1.lineTo(size.width * 0.9220703, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9143359, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9143359, size.height * 0.7530078);
    path_1.lineTo(size.width * 0.9122656, size.height * 0.7530078);
    path_1.lineTo(size.width * 0.9122656, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9022656, size.height * 0.7575586);
    path_1.cubicTo(
        size.width * 0.9022070,
        size.height * 0.7573437,
        size.width * 0.9021680,
        size.height * 0.7571094,
        size.width * 0.9021680,
        size.height * 0.7568555);
    path_1.cubicTo(
        size.width * 0.9021680,
        size.height * 0.7557617,
        size.width * 0.9030078,
        size.height * 0.7544531,
        size.width * 0.9051758,
        size.height * 0.7544531);
    path_1.cubicTo(
        size.width * 0.9066211,
        size.height * 0.7544531,
        size.width * 0.9076953,
        size.height * 0.7549219,
        size.width * 0.9082227,
        size.height * 0.7552148);
    path_1.lineTo(size.width * 0.9087891, size.height * 0.7535352);
    path_1.cubicTo(
        size.width * 0.9080664,
        size.height * 0.7531250,
        size.width * 0.9068945,
        size.height * 0.7527539,
        size.width * 0.9052539,
        size.height * 0.7527539);
    path_1.cubicTo(
        size.width * 0.9021484,
        size.height * 0.7527539,
        size.width * 0.9000781,
        size.height * 0.7546094,
        size.width * 0.9000781,
        size.height * 0.7571094);
    path_1.cubicTo(
        size.width * 0.9000781,
        size.height * 0.7593750,
        size.width * 0.9016992,
        size.height * 0.7607227,
        size.width * 0.9043164,
        size.height * 0.7616406);
    path_1.cubicTo(
        size.width * 0.9064844,
        size.height * 0.7624805,
        size.width * 0.9073242,
        size.height * 0.7633203,
        size.width * 0.9073242,
        size.height * 0.7648242);
    path_1.cubicTo(
        size.width * 0.9073047,
        size.height * 0.7664258,
        size.width * 0.9060742,
        size.height * 0.7675391,
        size.width * 0.9039648,
        size.height * 0.7675391);
    path_1.close();
    path_1.moveTo(size.width * 0.9482812, size.height * 0.7605078);
    path_1.lineTo(size.width * 0.9461719, size.height * 0.7605078);
    path_1.lineTo(size.width * 0.9461719, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9518945, size.height * 0.7575586);
    path_1.cubicTo(
        size.width * 0.9518164,
        size.height * 0.7593359,
        size.width * 0.9504492,
        size.height * 0.7605078,
        size.width * 0.9482812,
        size.height * 0.7605078);
    path_1.close();
    path_1.moveTo(size.width * 0.9461523, size.height * 0.7546680);
    path_1.cubicTo(
        size.width * 0.9464844,
        size.height * 0.7545703,
        size.width * 0.9471875,
        size.height * 0.7544727,
        size.width * 0.9481836,
        size.height * 0.7544727);
    path_1.cubicTo(
        size.width * 0.9503711,
        size.height * 0.7544922,
        size.width * 0.9518750,
        size.height * 0.7553906,
        size.width * 0.9518750,
        size.height * 0.7574609);
    path_1.cubicTo(
        size.width * 0.9518750,
        size.height * 0.7574805,
        size.width * 0.9518750,
        size.height * 0.7575195,
        size.width * 0.9518750,
        size.height * 0.7575391);
    path_1.lineTo(size.width * 0.9461523, size.height * 0.7575391);
    path_1.lineTo(size.width * 0.9461523, size.height * 0.7546680);
    path_1.close();
    path_1.moveTo(size.width * 0.9392187, size.height * 0.7609375);
    path_1.cubicTo(
        size.width * 0.9392187,
        size.height * 0.7645703,
        size.width * 0.9373633,
        size.height * 0.7675977,
        size.width * 0.9340820,
        size.height * 0.7675977);
    path_1.cubicTo(
        size.width * 0.9308203,
        size.height * 0.7675977,
        size.width * 0.9289844,
        size.height * 0.7645313,
        size.width * 0.9289844,
        size.height * 0.7611133);
    path_1.cubicTo(
        size.width * 0.9289844,
        size.height * 0.7598438,
        size.width * 0.9292187,
        size.height * 0.7586133,
        size.width * 0.9296680,
        size.height * 0.7575781);
    path_1.lineTo(size.width * 0.9385547, size.height * 0.7575781);
    path_1.cubicTo(
        size.width * 0.9390039,
        size.height * 0.7585937,
        size.width * 0.9392187,
        size.height * 0.7597656,
        size.width * 0.9392187,
        size.height * 0.7609375);
    path_1.close();
    path_1.moveTo(size.width * 0.9341211, size.height * 0.7544141);
    path_1.cubicTo(
        size.width * 0.9363086,
        size.height * 0.7544141,
        size.width * 0.9377539,
        size.height * 0.7557422,
        size.width * 0.9385547,
        size.height * 0.7575391);
    path_1.lineTo(size.width * 0.9296875, size.height * 0.7575391);
    path_1.cubicTo(
        size.width * 0.9304687,
        size.height * 0.7557031,
        size.width * 0.9319531,
        size.height * 0.7544141,
        size.width * 0.9341211,
        size.height * 0.7544141);
    path_1.close();
    path_1.moveTo(size.width * 0.9220508, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9220508, size.height * 0.7596875);
    path_1.lineTo(size.width * 0.9143164, size.height * 0.7596875);
    path_1.lineTo(size.width * 0.9143164, size.height * 0.7575586);
    path_1.lineTo(size.width * 0.9220508, size.height * 0.7575586);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8929492, size.height * 0.7859180);
    path_2.cubicTo(
        size.width * 0.8929492,
        size.height * 0.7841016,
        size.width * 0.8929297,
        size.height * 0.7826562,
        size.width * 0.8928711,
        size.height * 0.7812695);
    path_2.lineTo(size.width * 0.8938867, size.height * 0.7812695);
    path_2.cubicTo(
        size.width * 0.8944922,
        size.height * 0.7823828,
        size.width * 0.8951562,
        size.height * 0.7835156,
        size.width * 0.8958594,
        size.height * 0.7846484);
    path_2.lineTo(size.width * 0.9009375, size.height * 0.7927734);
    path_2.lineTo(size.width * 0.9030273, size.height * 0.7927734);
    path_2.lineTo(size.width * 0.9030273, size.height * 0.7812891);
    path_2.lineTo(size.width * 0.9066016, size.height * 0.7812891);
    path_2.lineTo(size.width * 0.9066016, size.height * 0.7862109);
    path_2.cubicTo(
        size.width * 0.9066016,
        size.height * 0.7911719,
        size.width * 0.9090820,
        size.height * 0.7930469,
        size.width * 0.9123437,
        size.height * 0.7930469);
    path_2.cubicTo(
        size.width * 0.9158203,
        size.height * 0.7930469,
        size.width * 0.9183984,
        size.height * 0.7910352,
        size.width * 0.9183984,
        size.height * 0.7861133);
    path_2.lineTo(size.width * 0.9183984, size.height * 0.7812891);
    path_2.lineTo(size.width * 0.9223633, size.height * 0.7812891);
    path_2.lineTo(size.width * 0.9215625, size.height * 0.7927734);
    path_2.lineTo(size.width * 0.9235352, size.height * 0.7927734);
    path_2.lineTo(size.width * 0.9239648, size.height * 0.7859180);
    path_2.cubicTo(
        size.width * 0.9240625,
        size.height * 0.7843945,
        size.width * 0.9241406,
        size.height * 0.7827930,
        size.width * 0.9241992,
        size.height * 0.7812891);
    path_2.lineTo(size.width * 0.9250000, size.height * 0.7812891);
    path_2.cubicTo(
        size.width * 0.9253516,
        size.height * 0.7825000,
        size.width * 0.9257422,
        size.height * 0.7837305,
        size.width * 0.9261914,
        size.height * 0.7850586);
    path_2.lineTo(size.width * 0.9287891, size.height * 0.7926758);
    path_2.lineTo(size.width * 0.9303516, size.height * 0.7926758);
    path_2.lineTo(size.width * 0.9331836, size.height * 0.7849023);
    path_2.cubicTo(
        size.width * 0.9336523,
        size.height * 0.7836133,
        size.width * 0.9340625,
        size.height * 0.7824219,
        size.width * 0.9344336,
        size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9353125, size.height * 0.7812695);
    path_2.cubicTo(
        size.width * 0.9353516,
        size.height * 0.7827539,
        size.width * 0.9354297,
        size.height * 0.7843164,
        size.width * 0.9355078,
        size.height * 0.7857227);
    path_2.lineTo(size.width * 0.9359180, size.height * 0.7927539);
    path_2.lineTo(size.width * 0.9379297, size.height * 0.7927539);
    path_2.lineTo(size.width * 0.9372070, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9410937, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9410937, size.height * 0.7927148);
    path_2.cubicTo(
        size.width * 0.9417773,
        size.height * 0.7928125,
        size.width * 0.9428711,
        size.height * 0.7929102,
        size.width * 0.9442969,
        size.height * 0.7929102);
    path_2.cubicTo(
        size.width * 0.9469141,
        size.height * 0.7929102,
        size.width * 0.9487109,
        size.height * 0.7924414,
        size.width * 0.9498242,
        size.height * 0.7914062);
    path_2.cubicTo(
        size.width * 0.9506250,
        size.height * 0.7906250,
        size.width * 0.9511719,
        size.height * 0.7895703,
        size.width * 0.9511719,
        size.height * 0.7882031);
    path_2.cubicTo(
        size.width * 0.9511719,
        size.height * 0.7858203,
        size.width * 0.9493945,
        size.height * 0.7845703,
        size.width * 0.9478711,
        size.height * 0.7841797);
    path_2.lineTo(size.width * 0.9478711, size.height * 0.7841406);
    path_2.cubicTo(
        size.width * 0.9493164,
        size.height * 0.7836133,
        size.width * 0.9502344,
        size.height * 0.7825391,
        size.width * 0.9504687,
        size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9539453, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9539453, size.height * 0.7927539);
    path_2.lineTo(size.width * 0.9629492, size.height * 0.7927539);
    path_2.lineTo(size.width * 0.9629492, size.height * 0.7910156);
    path_2.lineTo(size.width * 0.9560156, size.height * 0.7910156);
    path_2.lineTo(size.width * 0.9560156, size.height * 0.7852344);
    path_2.lineTo(size.width * 0.9622461, size.height * 0.7852344);
    path_2.lineTo(size.width * 0.9622461, size.height * 0.7835156);
    path_2.lineTo(size.width * 0.9560156, size.height * 0.7835156);
    path_2.lineTo(size.width * 0.9560156, size.height * 0.7812305);
    path_2.lineTo(size.width * 0.9656250, size.height * 0.7812305);
    path_2.lineTo(size.width * 0.9656250, size.height * 0.7927148);
    path_2.lineTo(size.width * 0.9676953, size.height * 0.7927148);
    path_2.lineTo(size.width * 0.9676953, size.height * 0.7857812);
    path_2.lineTo(size.width * 0.9696484, size.height * 0.7857812);
    path_2.cubicTo(
        size.width * 0.9715234,
        size.height * 0.7858594,
        size.width * 0.9723828,
        size.height * 0.7866797,
        size.width * 0.9728516,
        size.height * 0.7888867);
    path_2.cubicTo(
        size.width * 0.9733008,
        size.height * 0.7908789,
        size.width * 0.9736523,
        size.height * 0.7922656,
        size.width * 0.9739258,
        size.height * 0.7927148);
    path_2.lineTo(size.width * 0.9760742, size.height * 0.7927148);
    path_2.cubicTo(
        size.width * 0.9757422,
        size.height * 0.7920898,
        size.width * 0.9753516,
        size.height * 0.7905469,
        size.width * 0.9748437,
        size.height * 0.7883203);
    path_2.cubicTo(
        size.width * 0.9744727,
        size.height * 0.7866602,
        size.width * 0.9737305,
        size.height * 0.7855078,
        size.width * 0.9725000,
        size.height * 0.7850977);
    path_2.lineTo(size.width * 0.9725000, size.height * 0.7850195);
    path_2.cubicTo(
        size.width * 0.9741797,
        size.height * 0.7844531,
        size.width * 0.9755078,
        size.height * 0.7830469,
        size.width * 0.9755078,
        size.height * 0.7809375);
    path_2.cubicTo(
        size.width * 0.9755078,
        size.height * 0.7797070,
        size.width * 0.9750586,
        size.height * 0.7786133,
        size.width * 0.9742578,
        size.height * 0.7778906);
    path_2.cubicTo(
        size.width * 0.9732617,
        size.height * 0.7769922,
        size.width * 0.9718359,
        size.height * 0.7765820,
        size.width * 0.9696289,
        size.height * 0.7765820);
    path_2.cubicTo(
        size.width * 0.9682031,
        size.height * 0.7765820,
        size.width * 0.9666992,
        size.height * 0.7766992,
        size.width * 0.9656641,
        size.height * 0.7769141);
    path_2.lineTo(size.width * 0.9656641, size.height * 0.7812109);
    path_2.lineTo(size.width * 0.9560547, size.height * 0.7812109);
    path_2.lineTo(size.width * 0.9560547, size.height * 0.7784375);
    path_2.lineTo(size.width * 0.9626367, size.height * 0.7784375);
    path_2.lineTo(size.width * 0.9626367, size.height * 0.7766992);
    path_2.lineTo(size.width * 0.9539844, size.height * 0.7766992);
    path_2.lineTo(size.width * 0.9539844, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9505078, size.height * 0.7812500);
    path_2.cubicTo(
        size.width * 0.9505469,
        size.height * 0.7810352,
        size.width * 0.9506055,
        size.height * 0.7808203,
        size.width * 0.9506055,
        size.height * 0.7806055);
    path_2.cubicTo(
        size.width * 0.9506055,
        size.height * 0.7793555,
        size.width * 0.9501172,
        size.height * 0.7783984,
        size.width * 0.9492773,
        size.height * 0.7777734);
    path_2.cubicTo(
        size.width * 0.9482812,
        size.height * 0.7769727,
        size.width * 0.9469531,
        size.height * 0.7766016,
        size.width * 0.9448828,
        size.height * 0.7766016);
    path_2.cubicTo(
        size.width * 0.9434375,
        size.height * 0.7766016,
        size.width * 0.9420117,
        size.height * 0.7767383,
        size.width * 0.9411133,
        size.height * 0.7769336);
    path_2.lineTo(size.width * 0.9411133, size.height * 0.7812305);
    path_2.lineTo(size.width * 0.9372266, size.height * 0.7812305);
    path_2.lineTo(size.width * 0.9369531, size.height * 0.7767188);
    path_2.lineTo(size.width * 0.9343164, size.height * 0.7767188);
    path_2.lineTo(size.width * 0.9326172, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9269141, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9253125, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9226758, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9223633, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9183984, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9183984, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9163086, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9163086, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9086914, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9086914, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9066016, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9066016, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9030273, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9030273, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9010742, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.9010742, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.8961133, size.height * 0.7812500);
    path_2.lineTo(size.width * 0.8932617, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.8910156, size.height * 0.7767383);
    path_2.lineTo(size.width * 0.8910156, size.height * 0.7927539);
    path_2.lineTo(size.width * 0.8929688, size.height * 0.7927539);
    path_2.lineTo(size.width * 0.8929688, size.height * 0.7859180);
    path_2.close();
    path_2.moveTo(size.width * 0.9698242, size.height * 0.7842578);
    path_2.lineTo(size.width * 0.9677148, size.height * 0.7842578);
    path_2.lineTo(size.width * 0.9677148, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9734375, size.height * 0.7812695);
    path_2.cubicTo(
        size.width * 0.9733984,
        size.height * 0.7830664,
        size.width * 0.9720117,
        size.height * 0.7842578,
        size.width * 0.9698242,
        size.height * 0.7842578);
    path_2.close();
    path_2.moveTo(size.width * 0.9677148, size.height * 0.7783984);
    path_2.cubicTo(
        size.width * 0.9680469,
        size.height * 0.7783008,
        size.width * 0.9687500,
        size.height * 0.7782031,
        size.width * 0.9697461,
        size.height * 0.7782031);
    path_2.cubicTo(
        size.width * 0.9719336,
        size.height * 0.7782227,
        size.width * 0.9734375,
        size.height * 0.7791211,
        size.width * 0.9734375,
        size.height * 0.7811914);
    path_2.cubicTo(
        size.width * 0.9734375,
        size.height * 0.7812109,
        size.width * 0.9734375,
        size.height * 0.7812305,
        size.width * 0.9734375,
        size.height * 0.7812305);
    path_2.lineTo(size.width * 0.9677148, size.height * 0.7812305);
    path_2.lineTo(size.width * 0.9677148, size.height * 0.7783984);
    path_2.close();
    path_2.moveTo(size.width * 0.9490039, size.height * 0.7881641);
    path_2.cubicTo(
        size.width * 0.9490039,
        size.height * 0.7904883,
        size.width * 0.9470312,
        size.height * 0.7912695,
        size.width * 0.9449023,
        size.height * 0.7912695);
    path_2.cubicTo(
        size.width * 0.9441602,
        size.height * 0.7912695,
        size.width * 0.9435742,
        size.height * 0.7912500,
        size.width * 0.9431641,
        size.height * 0.7911719);
    path_2.lineTo(size.width * 0.9431641, size.height * 0.7850586);
    path_2.lineTo(size.width * 0.9448633, size.height * 0.7850586);
    path_2.cubicTo(
        size.width * 0.9471289,
        size.height * 0.7850781,
        size.width * 0.9490039,
        size.height * 0.7859766,
        size.width * 0.9490039,
        size.height * 0.7881641);
    path_2.close();
    path_2.moveTo(size.width * 0.9450391, size.height * 0.7835156);
    path_2.lineTo(size.width * 0.9431641, size.height * 0.7835156);
    path_2.lineTo(size.width * 0.9431641, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9484570, size.height * 0.7812695);
    path_2.cubicTo(
        size.width * 0.9482227,
        size.height * 0.7825781,
        size.width * 0.9470117,
        size.height * 0.7835156,
        size.width * 0.9450391,
        size.height * 0.7835156);
    path_2.close();
    path_2.moveTo(size.width * 0.9431641, size.height * 0.7783594);
    path_2.cubicTo(
        size.width * 0.9434961,
        size.height * 0.7782812,
        size.width * 0.9440430,
        size.height * 0.7782227,
        size.width * 0.9450000,
        size.height * 0.7782227);
    path_2.cubicTo(
        size.width * 0.9470898,
        size.height * 0.7782227,
        size.width * 0.9485156,
        size.height * 0.7789648,
        size.width * 0.9485156,
        size.height * 0.7808398);
    path_2.cubicTo(
        size.width * 0.9485156,
        size.height * 0.7809961,
        size.width * 0.9484961,
        size.height * 0.7811328,
        size.width * 0.9484766,
        size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9431836, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9431836, size.height * 0.7783594);
    path_2.close();
    path_2.moveTo(size.width * 0.9351758, size.height * 0.7788086);
    path_2.lineTo(size.width * 0.9352539, size.height * 0.7788086);
    path_2.cubicTo(
        size.width * 0.9352539,
        size.height * 0.7795508,
        size.width * 0.9352539,
        size.height * 0.7803906,
        size.width * 0.9352930,
        size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9344141, size.height * 0.7812500);
    path_2.cubicTo(
        size.width * 0.9346875,
        size.height * 0.7804297,
        size.width * 0.9349414,
        size.height * 0.7795898,
        size.width * 0.9351758,
        size.height * 0.7788086);
    path_2.close();
    path_2.moveTo(size.width * 0.9326172, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9314258, size.height * 0.7844922);
    path_2.cubicTo(
        size.width * 0.9307227,
        size.height * 0.7865039,
        size.width * 0.9301367,
        size.height * 0.7882617,
        size.width * 0.9297461,
        size.height * 0.7898828);
    path_2.lineTo(size.width * 0.9296680, size.height * 0.7898828);
    path_2.cubicTo(
        size.width * 0.9292578,
        size.height * 0.7882227,
        size.width * 0.9287109,
        size.height * 0.7864648,
        size.width * 0.9280469,
        size.height * 0.7844922);
    path_2.lineTo(size.width * 0.9269141, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9326172, size.height * 0.7812695);
    path_2.close();
    path_2.moveTo(size.width * 0.9242773, size.height * 0.7788086);
    path_2.lineTo(size.width * 0.9243164, size.height * 0.7788086);
    path_2.cubicTo(
        size.width * 0.9244922,
        size.height * 0.7795898,
        size.width * 0.9247461,
        size.height * 0.7804102,
        size.width * 0.9249805,
        size.height * 0.7812500);
    path_2.lineTo(size.width * 0.9241797, size.height * 0.7812500);
    path_2.cubicTo(
        size.width * 0.9242383,
        size.height * 0.7803906,
        size.width * 0.9242578,
        size.height * 0.7795508,
        size.width * 0.9242773,
        size.height * 0.7788086);
    path_2.close();
    path_2.moveTo(size.width * 0.9163281, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9163281, size.height * 0.7862305);
    path_2.cubicTo(
        size.width * 0.9163281,
        size.height * 0.7897656,
        size.width * 0.9148047,
        size.height * 0.7913281,
        size.width * 0.9124414,
        size.height * 0.7913281);
    path_2.cubicTo(
        size.width * 0.9103125,
        size.height * 0.7913281,
        size.width * 0.9087109,
        size.height * 0.7898047,
        size.width * 0.9087109,
        size.height * 0.7862305);
    path_2.lineTo(size.width * 0.9087109, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9163281, size.height * 0.7812695);
    path_2.close();
    path_2.moveTo(size.width * 0.9010742, size.height * 0.7812695);
    path_2.lineTo(size.width * 0.9010742, size.height * 0.7834570);
    path_2.cubicTo(
        size.width * 0.9010742,
        size.height * 0.7859570,
        size.width * 0.9011328,
        size.height * 0.7878906,
        size.width * 0.9013086,
        size.height * 0.7900391);
    path_2.lineTo(size.width * 0.9012500, size.height * 0.7900586);
    path_2.cubicTo(
        size.width * 0.9004883,
        size.height * 0.7884180,
        size.width * 0.8995703,
        size.height * 0.7867383,
        size.width * 0.8983789,
        size.height * 0.7848633);
    path_2.lineTo(size.width * 0.8961133, size.height * 0.7812891);
    path_2.lineTo(size.width * 0.9010742, size.height * 0.7812891);
    path_2.close();
    path_2.moveTo(size.width * 0.8928516, size.height * 0.7792773);
    path_2.cubicTo(
        size.width * 0.8931445,
        size.height * 0.7799219,
        size.width * 0.8935156,
        size.height * 0.7805859,
        size.width * 0.8938672,
        size.height * 0.7812500);
    path_2.lineTo(size.width * 0.8928516, size.height * 0.7812500);
    path_2.cubicTo(
        size.width * 0.8928320,
        size.height * 0.7805859,
        size.width * 0.8927930,
        size.height * 0.7799414,
        size.width * 0.8927539,
        size.height * 0.7792969);
    path_2.lineTo(size.width * 0.8928516, size.height * 0.7792773);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.9709961, size.height * 0.8088672);
    path_3.lineTo(size.width * 0.9709961, size.height * 0.8087891);
    path_3.cubicTo(
        size.width * 0.9726758,
        size.height * 0.8082227,
        size.width * 0.9740039,
        size.height * 0.8068164,
        size.width * 0.9740039,
        size.height * 0.8047070);
    path_3.cubicTo(
        size.width * 0.9740039,
        size.height * 0.8034766,
        size.width * 0.9735547,
        size.height * 0.8023828,
        size.width * 0.9727539,
        size.height * 0.8016602);
    path_3.cubicTo(
        size.width * 0.9717578,
        size.height * 0.8007617,
        size.width * 0.9703320,
        size.height * 0.8003516,
        size.width * 0.9681250,
        size.height * 0.8003516);
    path_3.cubicTo(
        size.width * 0.9666992,
        size.height * 0.8003516,
        size.width * 0.9651953,
        size.height * 0.8004687,
        size.width * 0.9641602,
        size.height * 0.8006836);
    path_3.lineTo(size.width * 0.9641602, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9605859, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9605859, size.height * 0.8004688);
    path_3.lineTo(size.width * 0.9584961, size.height * 0.8004688);
    path_3.lineTo(size.width * 0.9584961, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9508789, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9508789, size.height * 0.8004688);
    path_3.lineTo(size.width * 0.9487891, size.height * 0.8004688);
    path_3.lineTo(size.width * 0.9487891, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9458984, size.height * 0.8061328);
    path_3.cubicTo(
        size.width * 0.9451563,
        size.height * 0.8025781,
        size.width * 0.9425977,
        size.height * 0.8001953,
        size.width * 0.9389453,
        size.height * 0.8001953);
    path_3.cubicTo(
        size.width * 0.9354102,
        size.height * 0.8001953,
        size.width * 0.9326758,
        size.height * 0.8024805,
        size.width * 0.9318164,
        size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9242383, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9242383, size.height * 0.8004688);
    path_3.lineTo(size.width * 0.9221680, size.height * 0.8004688);
    path_3.lineTo(size.width * 0.9221680, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9192578, size.height * 0.8061328);
    path_3.cubicTo(
        size.width * 0.9185156,
        size.height * 0.8025781,
        size.width * 0.9159570,
        size.height * 0.8001953,
        size.width * 0.9123047,
        size.height * 0.8001953);
    path_3.cubicTo(
        size.width * 0.9087695,
        size.height * 0.8001953,
        size.width * 0.9060352,
        size.height * 0.8024805,
        size.width * 0.9051758,
        size.height * 0.8061328);
    path_3.lineTo(size.width * 0.8941211, size.height * 0.8061328);
    path_3.cubicTo(
        size.width * 0.8949023,
        size.height * 0.8034375,
        size.width * 0.8970703,
        size.height * 0.8019336,
        size.width * 0.9000195,
        size.height * 0.8019336);
    path_3.cubicTo(
        size.width * 0.9013477,
        size.height * 0.8019336,
        size.width * 0.9024609,
        size.height * 0.8022266,
        size.width * 0.9032422,
        size.height * 0.8025977);
    path_3.lineTo(size.width * 0.9037500, size.height * 0.8009180);
    path_3.cubicTo(
        size.width * 0.9032031,
        size.height * 0.8006250,
        size.width * 0.9019531,
        size.height * 0.8001953,
        size.width * 0.8999414,
        size.height * 0.8001953);
    path_3.cubicTo(
        size.width * 0.8949805,
        size.height * 0.8001953,
        size.width * 0.8915820,
        size.height * 0.8035937,
        size.width * 0.8915820,
        size.height * 0.8086133);
    path_3.cubicTo(
        size.width * 0.8915820,
        size.height * 0.8138672,
        size.width * 0.8949805,
        size.height * 0.8167187,
        size.width * 0.8994922,
        size.height * 0.8167187);
    path_3.cubicTo(
        size.width * 0.9014453,
        size.height * 0.8167187,
        size.width * 0.9029688,
        size.height * 0.8163477,
        size.width * 0.9037109,
        size.height * 0.8159570);
    path_3.lineTo(size.width * 0.9032813, size.height * 0.8143164);
    path_3.cubicTo(
        size.width * 0.9024414,
        size.height * 0.8147266,
        size.width * 0.9011719,
        size.height * 0.8149805,
        size.width * 0.8999023,
        size.height * 0.8149805);
    path_3.cubicTo(
        size.width * 0.8960156,
        size.height * 0.8149805,
        size.width * 0.8937500,
        size.height * 0.8124609,
        size.width * 0.8937500,
        size.height * 0.8085352);
    path_3.cubicTo(
        size.width * 0.8937500,
        size.height * 0.8076367,
        size.width * 0.8938867,
        size.height * 0.8068555,
        size.width * 0.8941016,
        size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9051563, size.height * 0.8061328);
    path_3.cubicTo(
        size.width * 0.9049805,
        size.height * 0.8069141,
        size.width * 0.9048438,
        size.height * 0.8077148,
        size.width * 0.9048438,
        size.height * 0.8086133);
    path_3.cubicTo(
        size.width * 0.9048438,
        size.height * 0.8134570,
        size.width * 0.9078125,
        size.height * 0.8167383,
        size.width * 0.9120313,
        size.height * 0.8167383);
    path_3.cubicTo(
        size.width * 0.9161133,
        size.height * 0.8167383,
        size.width * 0.9194727,
        size.height * 0.8138281,
        size.width * 0.9194727,
        size.height * 0.8083008);
    path_3.cubicTo(
        size.width * 0.9194727,
        size.height * 0.8075391,
        size.width * 0.9193750,
        size.height * 0.8068164,
        size.width * 0.9192383,
        size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9221484, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9221484, size.height * 0.8164648);
    path_3.lineTo(size.width * 0.9310547, size.height * 0.8164648);
    path_3.lineTo(size.width * 0.9310547, size.height * 0.8147266);
    path_3.lineTo(size.width * 0.9242188, size.height * 0.8147266);
    path_3.lineTo(size.width * 0.9242188, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9317969, size.height * 0.8061328);
    path_3.cubicTo(
        size.width * 0.9316211,
        size.height * 0.8069141,
        size.width * 0.9314844,
        size.height * 0.8077148,
        size.width * 0.9314844,
        size.height * 0.8086133);
    path_3.cubicTo(
        size.width * 0.9314844,
        size.height * 0.8134570,
        size.width * 0.9344531,
        size.height * 0.8167383,
        size.width * 0.9386719,
        size.height * 0.8167383);
    path_3.cubicTo(
        size.width * 0.9427539,
        size.height * 0.8167383,
        size.width * 0.9461133,
        size.height * 0.8138281,
        size.width * 0.9461133,
        size.height * 0.8083008);
    path_3.cubicTo(
        size.width * 0.9461133,
        size.height * 0.8075391,
        size.width * 0.9460156,
        size.height * 0.8068164,
        size.width * 0.9458789,
        size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9487695, size.height * 0.8061328);
    path_3.lineTo(size.width * 0.9487695, size.height * 0.8098828);
    path_3.cubicTo(
        size.width * 0.9487695,
        size.height * 0.8148438,
        size.width * 0.9512500,
        size.height * 0.8167188,
        size.width * 0.9545117,
        size.height * 0.8167188);
    path_3.cubicTo(
        size.width * 0.9579883,
        size.height * 0.8167188,
        size.width * 0.9605664,
        size.height * 0.8147070,
        size.width * 0.9605664,
        size.height * 0.8097852);
    path_3.lineTo(size.width * 0.9605664, size.height * 0.8061133);
    path_3.lineTo(size.width * 0.9641406, size.height * 0.8061133);
    path_3.lineTo(size.width * 0.9641406, size.height * 0.8164453);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.8164453);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.8095117);
    path_3.lineTo(size.width * 0.9681641, size.height * 0.8095117);
    path_3.cubicTo(
        size.width * 0.9700391,
        size.height * 0.8095898,
        size.width * 0.9708984,
        size.height * 0.8104102,
        size.width * 0.9713672,
        size.height * 0.8126172);
    path_3.cubicTo(
        size.width * 0.9718164,
        size.height * 0.8146094,
        size.width * 0.9721680,
        size.height * 0.8159961,
        size.width * 0.9724414,
        size.height * 0.8164453);
    path_3.lineTo(size.width * 0.9745703, size.height * 0.8164453);
    path_3.cubicTo(
        size.width * 0.9742383,
        size.height * 0.8158203,
        size.width * 0.9738477,
        size.height * 0.8142773,
        size.width * 0.9733398,
        size.height * 0.8120508);
    path_3.cubicTo(
        size.width * 0.9729688,
        size.height * 0.8104492,
        size.width * 0.9722266,
        size.height * 0.8092969,
        size.width * 0.9709961,
        size.height * 0.8088672);
    path_3.close();
    path_3.moveTo(size.width * 0.9121680, size.height * 0.8019141);
    path_3.cubicTo(
        size.width * 0.9147852,
        size.height * 0.8019141,
        size.width * 0.9163672,
        size.height * 0.8038477,
        size.width * 0.9169727,
        size.height * 0.8061523);
    path_3.lineTo(size.width * 0.9073242, size.height * 0.8061523);
    path_3.cubicTo(
        size.width * 0.9079687,
        size.height * 0.8037500,
        size.width * 0.9095703,
        size.height * 0.8019141,
        size.width * 0.9121680,
        size.height * 0.8019141);
    path_3.close();
    path_3.moveTo(size.width * 0.9172656, size.height * 0.8084180);
    path_3.cubicTo(
        size.width * 0.9172656,
        size.height * 0.8120508,
        size.width * 0.9154102,
        size.height * 0.8150781,
        size.width * 0.9121289,
        size.height * 0.8150781);
    path_3.cubicTo(
        size.width * 0.9088672,
        size.height * 0.8150781,
        size.width * 0.9070312,
        size.height * 0.8120117,
        size.width * 0.9070312,
        size.height * 0.8085938);
    path_3.cubicTo(
        size.width * 0.9070312,
        size.height * 0.8077539,
        size.width * 0.9071289,
        size.height * 0.8069336,
        size.width * 0.9073242,
        size.height * 0.8061719);
    path_3.lineTo(size.width * 0.9169727, size.height * 0.8061719);
    path_3.cubicTo(
        size.width * 0.9171680,
        size.height * 0.8068945,
        size.width * 0.9172656,
        size.height * 0.8076562,
        size.width * 0.9172656,
        size.height * 0.8084180);
    path_3.close();
    path_3.moveTo(size.width * 0.9388086, size.height * 0.8019141);
    path_3.cubicTo(
        size.width * 0.9414258,
        size.height * 0.8019141,
        size.width * 0.9430078,
        size.height * 0.8038477,
        size.width * 0.9436133,
        size.height * 0.8061523);
    path_3.lineTo(size.width * 0.9339648, size.height * 0.8061523);
    path_3.cubicTo(
        size.width * 0.9346094,
        size.height * 0.8037500,
        size.width * 0.9362109,
        size.height * 0.8019141,
        size.width * 0.9388086,
        size.height * 0.8019141);
    path_3.close();
    path_3.moveTo(size.width * 0.9439258, size.height * 0.8084180);
    path_3.cubicTo(
        size.width * 0.9439258,
        size.height * 0.8120508,
        size.width * 0.9420703,
        size.height * 0.8150781,
        size.width * 0.9387891,
        size.height * 0.8150781);
    path_3.cubicTo(
        size.width * 0.9355273,
        size.height * 0.8150781,
        size.width * 0.9336914,
        size.height * 0.8120117,
        size.width * 0.9336914,
        size.height * 0.8085938);
    path_3.cubicTo(
        size.width * 0.9336914,
        size.height * 0.8077539,
        size.width * 0.9337891,
        size.height * 0.8069336,
        size.width * 0.9339844,
        size.height * 0.8061719);
    path_3.lineTo(size.width * 0.9436328, size.height * 0.8061719);
    path_3.cubicTo(
        size.width * 0.9438086,
        size.height * 0.8068945,
        size.width * 0.9439258,
        size.height * 0.8076562,
        size.width * 0.9439258,
        size.height * 0.8084180);
    path_3.close();
    path_3.moveTo(size.width * 0.9584766, size.height * 0.8099609);
    path_3.cubicTo(
        size.width * 0.9584766,
        size.height * 0.8134961,
        size.width * 0.9569531,
        size.height * 0.8150586,
        size.width * 0.9545898,
        size.height * 0.8150586);
    path_3.cubicTo(
        size.width * 0.9524609,
        size.height * 0.8150586,
        size.width * 0.9508594,
        size.height * 0.8135352,
        size.width * 0.9508594,
        size.height * 0.8099609);
    path_3.lineTo(size.width * 0.9508594, size.height * 0.8061523);
    path_3.lineTo(size.width * 0.9584766, size.height * 0.8061523);
    path_3.lineTo(size.width * 0.9584766, size.height * 0.8099609);
    path_3.close();
    path_3.moveTo(size.width * 0.9662109, size.height * 0.8021484);
    path_3.cubicTo(
        size.width * 0.9665430,
        size.height * 0.8020508,
        size.width * 0.9672461,
        size.height * 0.8019531,
        size.width * 0.9682422,
        size.height * 0.8019531);
    path_3.cubicTo(
        size.width * 0.9704297,
        size.height * 0.8019727,
        size.width * 0.9719336,
        size.height * 0.8028711,
        size.width * 0.9719336,
        size.height * 0.8049414);
    path_3.cubicTo(
        size.width * 0.9719336,
        size.height * 0.8053906,
        size.width * 0.9718555,
        size.height * 0.8057812,
        size.width * 0.9716992,
        size.height * 0.8061523);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.8061523);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.8021484);
    path_3.close();
    path_3.moveTo(size.width * 0.9683203, size.height * 0.8080078);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.8080078);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.8061719);
    path_3.lineTo(size.width * 0.9716992, size.height * 0.8061719);
    path_3.cubicTo(
        size.width * 0.9712109,
        size.height * 0.8073047,
        size.width * 0.9700000,
        size.height * 0.8080078,
        size.width * 0.9683203,
        size.height * 0.8080078);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
