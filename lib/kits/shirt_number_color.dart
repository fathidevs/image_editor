import 'package:flutter/material.dart';

class ShirtNumberColor extends CustomPainter {
  final Color color;
  ShirtNumberColor({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.9156836, size.height * 0.6758398,
            size.width * 0.03939453, size.height * 0.03939453),
        paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9092969, size.height * 0.6121289);
    path_1.cubicTo(
        size.width * 0.9078711,
        size.height * 0.6121289,
        size.width * 0.9065234,
        size.height * 0.6116602,
        size.width * 0.9055859,
        size.height * 0.6110938);
    path_1.lineTo(size.width * 0.9050586, size.height * 0.6128320);
    path_1.cubicTo(
        size.width * 0.9059180,
        size.height * 0.6133984,
        size.width * 0.9075977,
        size.height * 0.6138477,
        size.width * 0.9091406,
        size.height * 0.6138477);
    path_1.cubicTo(
        size.width * 0.9129102,
        size.height * 0.6138477,
        size.width * 0.9147461,
        size.height * 0.6116992,
        size.width * 0.9147461,
        size.height * 0.6092383);
    path_1.cubicTo(
        size.width * 0.9147461,
        size.height * 0.6068945,
        size.width * 0.9133789,
        size.height * 0.6055859,
        size.width * 0.9106641,
        size.height * 0.6045312);
    path_1.cubicTo(
        size.width * 0.9089844,
        size.height * 0.6038867,
        size.width * 0.9080273,
        size.height * 0.6033008,
        size.width * 0.9076563,
        size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9175781, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9175781, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9196484, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9196484, size.height * 0.6061133);
    path_1.lineTo(size.width * 0.9273828, size.height * 0.6061133);
    path_1.lineTo(size.width * 0.9273828, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9294727, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9294727, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9330469, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9330469, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9351172, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9351172, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9387305, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9387305, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9408008, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9408008, size.height * 0.6066797);
    path_1.lineTo(size.width * 0.9427539, size.height * 0.6066797);
    path_1.cubicTo(
        size.width * 0.9446289,
        size.height * 0.6067578,
        size.width * 0.9454883,
        size.height * 0.6075781,
        size.width * 0.9459570,
        size.height * 0.6097852);
    path_1.cubicTo(
        size.width * 0.9464063,
        size.height * 0.6117773,
        size.width * 0.9467578,
        size.height * 0.6131641,
        size.width * 0.9470312,
        size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9491602, size.height * 0.6136133);
    path_1.cubicTo(
        size.width * 0.9488281,
        size.height * 0.6129883,
        size.width * 0.9484375,
        size.height * 0.6114453,
        size.width * 0.9479297,
        size.height * 0.6092187);
    path_1.cubicTo(
        size.width * 0.9475586,
        size.height * 0.6075586,
        size.width * 0.9468164,
        size.height * 0.6064062,
        size.width * 0.9455859,
        size.height * 0.6059961);
    path_1.lineTo(size.width * 0.9455859, size.height * 0.6059180);
    path_1.cubicTo(
        size.width * 0.9471094,
        size.height * 0.6054102,
        size.width * 0.9483398,
        size.height * 0.6041992,
        size.width * 0.9485547,
        size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9547656, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9547656, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9568555, size.height * 0.6136133);
    path_1.lineTo(size.width * 0.9568555, size.height * 0.5993555);
    path_1.lineTo(size.width * 0.9617578, size.height * 0.5993555);
    path_1.lineTo(size.width * 0.9617578, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9499023, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9499023, size.height * 0.5993555);
    path_1.lineTo(size.width * 0.9547656, size.height * 0.5993555);
    path_1.lineTo(size.width * 0.9547656, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9485547, size.height * 0.6024023);
    path_1.cubicTo(
        size.width * 0.9485742,
        size.height * 0.6022070,
        size.width * 0.9485937,
        size.height * 0.6020312,
        size.width * 0.9485937,
        size.height * 0.6018359);
    path_1.cubicTo(
        size.width * 0.9485937,
        size.height * 0.6006055,
        size.width * 0.9481445,
        size.height * 0.5995117,
        size.width * 0.9473437,
        size.height * 0.5987891);
    path_1.cubicTo(
        size.width * 0.9463477,
        size.height * 0.5978906,
        size.width * 0.9449219,
        size.height * 0.5974805,
        size.width * 0.9427148,
        size.height * 0.5974805);
    path_1.cubicTo(
        size.width * 0.9412891,
        size.height * 0.5974805,
        size.width * 0.9397852,
        size.height * 0.5975977,
        size.width * 0.9387500,
        size.height * 0.5978125);
    path_1.lineTo(size.width * 0.9387500, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9351367, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9351367, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9330664, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9330664, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9294922, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9294922, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9274023, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9274023, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9196680, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9196680, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9175977, size.height * 0.5975977);
    path_1.lineTo(size.width * 0.9175977, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9076758, size.height * 0.6024023);
    path_1.cubicTo(
        size.width * 0.9075586,
        size.height * 0.6021289,
        size.width * 0.9075000,
        size.height * 0.6018164,
        size.width * 0.9075000,
        size.height * 0.6014453);
    path_1.cubicTo(
        size.width * 0.9075000,
        size.height * 0.6003516,
        size.width * 0.9083398,
        size.height * 0.5990430,
        size.width * 0.9105078,
        size.height * 0.5990430);
    path_1.cubicTo(
        size.width * 0.9119531,
        size.height * 0.5990430,
        size.width * 0.9130273,
        size.height * 0.5995117,
        size.width * 0.9135547,
        size.height * 0.5998047);
    path_1.lineTo(size.width * 0.9141211, size.height * 0.5981250);
    path_1.cubicTo(
        size.width * 0.9133984,
        size.height * 0.5977148,
        size.width * 0.9122266,
        size.height * 0.5973437,
        size.width * 0.9105859,
        size.height * 0.5973437);
    path_1.cubicTo(
        size.width * 0.9074805,
        size.height * 0.5973437,
        size.width * 0.9054102,
        size.height * 0.5991992,
        size.width * 0.9054102,
        size.height * 0.6016992);
    path_1.cubicTo(
        size.width * 0.9054102,
        size.height * 0.6039648,
        size.width * 0.9070313,
        size.height * 0.6053125,
        size.width * 0.9096484,
        size.height * 0.6062305);
    path_1.cubicTo(
        size.width * 0.9118164,
        size.height * 0.6070703,
        size.width * 0.9126563,
        size.height * 0.6079102,
        size.width * 0.9126563,
        size.height * 0.6094141);
    path_1.cubicTo(
        size.width * 0.9126367,
        size.height * 0.6110156,
        size.width * 0.9114062,
        size.height * 0.6121289,
        size.width * 0.9092969,
        size.height * 0.6121289);
    path_1.close();
    path_1.moveTo(size.width * 0.9429297, size.height * 0.6050977);
    path_1.lineTo(size.width * 0.9408203, size.height * 0.6050977);
    path_1.lineTo(size.width * 0.9408203, size.height * 0.6024023);
    path_1.lineTo(size.width * 0.9465039, size.height * 0.6024023);
    path_1.cubicTo(
        size.width * 0.9463281,
        size.height * 0.6040234,
        size.width * 0.9449805,
        size.height * 0.6050977,
        size.width * 0.9429297,
        size.height * 0.6050977);
    path_1.close();
    path_1.moveTo(size.width * 0.9408008, size.height * 0.5992578);
    path_1.cubicTo(
        size.width * 0.9411328,
        size.height * 0.5991602,
        size.width * 0.9418359,
        size.height * 0.5990625,
        size.width * 0.9428320,
        size.height * 0.5990625);
    path_1.cubicTo(
        size.width * 0.9450195,
        size.height * 0.5990820,
        size.width * 0.9465234,
        size.height * 0.5999805,
        size.width * 0.9465234,
        size.height * 0.6020508);
    path_1.cubicTo(
        size.width * 0.9465234,
        size.height * 0.6021680,
        size.width * 0.9465039,
        size.height * 0.6022656,
        size.width * 0.9464844,
        size.height * 0.6023828);
    path_1.lineTo(size.width * 0.9408008, size.height * 0.6023828);
    path_1.lineTo(size.width * 0.9408008, size.height * 0.5992578);
    path_1.close();
    path_1.moveTo(size.width * 0.9273828, size.height * 0.6023828);
    path_1.lineTo(size.width * 0.9273828, size.height * 0.6042773);
    path_1.lineTo(size.width * 0.9196484, size.height * 0.6042773);
    path_1.lineTo(size.width * 0.9196484, size.height * 0.6023828);
    path_1.lineTo(size.width * 0.9273828, size.height * 0.6023828);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8929492, size.height * 0.6305078);
    path_2.cubicTo(
        size.width * 0.8929492,
        size.height * 0.6278516,
        size.width * 0.8928906,
        size.height * 0.6259180,
        size.width * 0.8927734,
        size.height * 0.6239062);
    path_2.lineTo(size.width * 0.8928516, size.height * 0.6238867);
    path_2.cubicTo(
        size.width * 0.8936523,
        size.height * 0.6256250,
        size.width * 0.8947266,
        size.height * 0.6274414,
        size.width * 0.8958398,
        size.height * 0.6292383);
    path_2.lineTo(size.width * 0.9009180, size.height * 0.6373633);
    path_2.lineTo(size.width * 0.9030078, size.height * 0.6373633);
    path_2.lineTo(size.width * 0.9030078, size.height * 0.6254883);
    path_2.lineTo(size.width * 0.9065820, size.height * 0.6254883);
    path_2.lineTo(size.width * 0.9065820, size.height * 0.6307813);
    path_2.cubicTo(
        size.width * 0.9065820,
        size.height * 0.6357422,
        size.width * 0.9090625,
        size.height * 0.6376172,
        size.width * 0.9123242,
        size.height * 0.6376172);
    path_2.cubicTo(
        size.width * 0.9158008,
        size.height * 0.6376172,
        size.width * 0.9183789,
        size.height * 0.6356055,
        size.width * 0.9183789,
        size.height * 0.6306836);
    path_2.lineTo(size.width * 0.9183789, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9223633, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9215430, size.height * 0.6373437);
    path_2.lineTo(size.width * 0.9235156, size.height * 0.6373437);
    path_2.lineTo(size.width * 0.9239453, size.height * 0.6304883);
    path_2.cubicTo(
        size.width * 0.9240430,
        size.height * 0.6288477,
        size.width * 0.9241211,
        size.height * 0.6270703,
        size.width * 0.9241797,
        size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9248633, size.height * 0.6254688);
    path_2.cubicTo(
        size.width * 0.9252344,
        size.height * 0.6267969,
        size.width * 0.9256641,
        size.height * 0.6281445,
        size.width * 0.9261523,
        size.height * 0.6296289);
    path_2.lineTo(size.width * 0.9287500, size.height * 0.6372461);
    path_2.lineTo(size.width * 0.9303125, size.height * 0.6372461);
    path_2.lineTo(size.width * 0.9331445, size.height * 0.6294727);
    path_2.cubicTo(
        size.width * 0.9336719,
        size.height * 0.6280469,
        size.width * 0.9341016,
        size.height * 0.6267383,
        size.width * 0.9345117,
        size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9352539, size.height * 0.6254492);
    path_2.cubicTo(
        size.width * 0.9352930,
        size.height * 0.6270312,
        size.width * 0.9353906,
        size.height * 0.6287695,
        size.width * 0.9354688,
        size.height * 0.6302930);
    path_2.lineTo(size.width * 0.9358789, size.height * 0.6373242);
    path_2.lineTo(size.width * 0.9378906, size.height * 0.6373242);
    path_2.lineTo(size.width * 0.9371484, size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9410742, size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9410742, size.height * 0.6372852);
    path_2.cubicTo(
        size.width * 0.9417578,
        size.height * 0.6373828,
        size.width * 0.9428516,
        size.height * 0.6374805,
        size.width * 0.9442773,
        size.height * 0.6374805);
    path_2.cubicTo(
        size.width * 0.9468945,
        size.height * 0.6374805,
        size.width * 0.9486914,
        size.height * 0.6370117,
        size.width * 0.9498047,
        size.height * 0.6359766);
    path_2.cubicTo(
        size.width * 0.9506055,
        size.height * 0.6351953,
        size.width * 0.9511523,
        size.height * 0.6341406,
        size.width * 0.9511523,
        size.height * 0.6327734);
    path_2.cubicTo(
        size.width * 0.9511523,
        size.height * 0.6303906,
        size.width * 0.9493750,
        size.height * 0.6291406,
        size.width * 0.9478516,
        size.height * 0.6287500);
    path_2.lineTo(size.width * 0.9478516, size.height * 0.6287109);
    path_2.cubicTo(
        size.width * 0.9494336,
        size.height * 0.6281250,
        size.width * 0.9504102,
        size.height * 0.6268750,
        size.width * 0.9505078,
        size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9539258, size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9539258, size.height * 0.6373242);
    path_2.lineTo(size.width * 0.9629297, size.height * 0.6373242);
    path_2.lineTo(size.width * 0.9629297, size.height * 0.6355859);
    path_2.lineTo(size.width * 0.9559961, size.height * 0.6355859);
    path_2.lineTo(size.width * 0.9559961, size.height * 0.6298047);
    path_2.lineTo(size.width * 0.9622266, size.height * 0.6298047);
    path_2.lineTo(size.width * 0.9622266, size.height * 0.6280859);
    path_2.lineTo(size.width * 0.9559961, size.height * 0.6280859);
    path_2.lineTo(size.width * 0.9559961, size.height * 0.6254297);
    path_2.lineTo(size.width * 0.9656055, size.height * 0.6254297);
    path_2.lineTo(size.width * 0.9656055, size.height * 0.6373047);
    path_2.lineTo(size.width * 0.9676758, size.height * 0.6373047);
    path_2.lineTo(size.width * 0.9676758, size.height * 0.6303711);
    path_2.lineTo(size.width * 0.9696289, size.height * 0.6303711);
    path_2.cubicTo(
        size.width * 0.9715039,
        size.height * 0.6304492,
        size.width * 0.9723633,
        size.height * 0.6312695,
        size.width * 0.9728320,
        size.height * 0.6334766);
    path_2.cubicTo(
        size.width * 0.9732813,
        size.height * 0.6354688,
        size.width * 0.9736328,
        size.height * 0.6368555,
        size.width * 0.9739063,
        size.height * 0.6373047);
    path_2.lineTo(size.width * 0.9760352, size.height * 0.6373047);
    path_2.cubicTo(
        size.width * 0.9757031,
        size.height * 0.6366797,
        size.width * 0.9753125,
        size.height * 0.6351367,
        size.width * 0.9748047,
        size.height * 0.6329102);
    path_2.cubicTo(
        size.width * 0.9744336,
        size.height * 0.6312500,
        size.width * 0.9736914,
        size.height * 0.6300977,
        size.width * 0.9724609,
        size.height * 0.6296875);
    path_2.lineTo(size.width * 0.9724609, size.height * 0.6296094);
    path_2.cubicTo(
        size.width * 0.9741406,
        size.height * 0.6290430,
        size.width * 0.9754688,
        size.height * 0.6276367,
        size.width * 0.9754688,
        size.height * 0.6255273);
    path_2.cubicTo(
        size.width * 0.9754688,
        size.height * 0.6242969,
        size.width * 0.9750195,
        size.height * 0.6232031,
        size.width * 0.9742188,
        size.height * 0.6224805);
    path_2.cubicTo(
        size.width * 0.9732227,
        size.height * 0.6215820,
        size.width * 0.9717969,
        size.height * 0.6211719,
        size.width * 0.9695898,
        size.height * 0.6211719);
    path_2.cubicTo(
        size.width * 0.9681641,
        size.height * 0.6211719,
        size.width * 0.9666602,
        size.height * 0.6212891,
        size.width * 0.9656250,
        size.height * 0.6215039);
    path_2.lineTo(size.width * 0.9656250, size.height * 0.6254102);
    path_2.lineTo(size.width * 0.9560156, size.height * 0.6254102);
    path_2.lineTo(size.width * 0.9560156, size.height * 0.6230273);
    path_2.lineTo(size.width * 0.9625977, size.height * 0.6230273);
    path_2.lineTo(size.width * 0.9625977, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9539453, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9539453, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9505273, size.height * 0.6253906);
    path_2.cubicTo(
        size.width * 0.9505273,
        size.height * 0.6253125,
        size.width * 0.9505664,
        size.height * 0.6252344,
        size.width * 0.9505664,
        size.height * 0.6251563);
    path_2.cubicTo(
        size.width * 0.9505664,
        size.height * 0.6239063,
        size.width * 0.9500781,
        size.height * 0.6229492,
        size.width * 0.9492383,
        size.height * 0.6223242);
    path_2.cubicTo(
        size.width * 0.9482422,
        size.height * 0.6215234,
        size.width * 0.9469141,
        size.height * 0.6211523,
        size.width * 0.9448438,
        size.height * 0.6211523);
    path_2.cubicTo(
        size.width * 0.9433984,
        size.height * 0.6211523,
        size.width * 0.9419727,
        size.height * 0.6212891,
        size.width * 0.9410742,
        size.height * 0.6214844);
    path_2.lineTo(size.width * 0.9410742, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9371484, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9368945, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9342578, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9327344, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9267383, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9252930, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9226563, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9223633, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9183789, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9183789, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9162891, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9162891, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9086719, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9086719, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9065820, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9065820, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9030078, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.9030078, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9010547, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.9010547, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.8958398, size.height * 0.6253906);
    path_2.lineTo(size.width * 0.8932422, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.8909961, size.height * 0.6212891);
    path_2.lineTo(size.width * 0.8909961, size.height * 0.6373047);
    path_2.lineTo(size.width * 0.8929492, size.height * 0.6373047);
    path_2.lineTo(size.width * 0.8929492, size.height * 0.6305078);
    path_2.close();
    path_2.moveTo(size.width * 0.9698047, size.height * 0.6288477);
    path_2.lineTo(size.width * 0.9676953, size.height * 0.6288477);
    path_2.lineTo(size.width * 0.9676953, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9733789, size.height * 0.6254688);
    path_2.cubicTo(
        size.width * 0.9733984,
        size.height * 0.6255859,
        size.width * 0.9734180,
        size.height * 0.6256836,
        size.width * 0.9734180,
        size.height * 0.6258008);
    path_2.cubicTo(
        size.width * 0.9734180,
        size.height * 0.6276367,
        size.width * 0.9720117,
        size.height * 0.6288477,
        size.width * 0.9698047,
        size.height * 0.6288477);
    path_2.close();
    path_2.moveTo(size.width * 0.9676953, size.height * 0.6229883);
    path_2.cubicTo(
        size.width * 0.9680273,
        size.height * 0.6228906,
        size.width * 0.9687305,
        size.height * 0.6227930,
        size.width * 0.9697266,
        size.height * 0.6227930);
    path_2.cubicTo(
        size.width * 0.9717773,
        size.height * 0.6228125,
        size.width * 0.9732031,
        size.height * 0.6236328,
        size.width * 0.9733789,
        size.height * 0.6254297);
    path_2.lineTo(size.width * 0.9676953, size.height * 0.6254297);
    path_2.lineTo(size.width * 0.9676953, size.height * 0.6229883);
    path_2.close();
    path_2.moveTo(size.width * 0.9489844, size.height * 0.6327539);
    path_2.cubicTo(
        size.width * 0.9489844,
        size.height * 0.6350781,
        size.width * 0.9470117,
        size.height * 0.6358594,
        size.width * 0.9448828,
        size.height * 0.6358594);
    path_2.cubicTo(
        size.width * 0.9441406,
        size.height * 0.6358594,
        size.width * 0.9435547,
        size.height * 0.6358398,
        size.width * 0.9431445,
        size.height * 0.6357617);
    path_2.lineTo(size.width * 0.9431445, size.height * 0.6296484);
    path_2.lineTo(size.width * 0.9448437, size.height * 0.6296484);
    path_2.cubicTo(
        size.width * 0.9471094,
        size.height * 0.6296680,
        size.width * 0.9489844,
        size.height * 0.6305664,
        size.width * 0.9489844,
        size.height * 0.6327539);
    path_2.close();
    path_2.moveTo(size.width * 0.9450195, size.height * 0.6281055);
    path_2.lineTo(size.width * 0.9431445, size.height * 0.6281055);
    path_2.lineTo(size.width * 0.9431445, size.height * 0.6254687);
    path_2.lineTo(size.width * 0.9484766, size.height * 0.6254687);
    path_2.cubicTo(
        size.width * 0.9484570,
        size.height * 0.6269922,
        size.width * 0.9471875,
        size.height * 0.6281055,
        size.width * 0.9450195,
        size.height * 0.6281055);
    path_2.close();
    path_2.moveTo(size.width * 0.9431445, size.height * 0.6229492);
    path_2.cubicTo(
        size.width * 0.9434766,
        size.height * 0.6228711,
        size.width * 0.9440234,
        size.height * 0.6228125,
        size.width * 0.9449805,
        size.height * 0.6228125);
    path_2.cubicTo(
        size.width * 0.9470703,
        size.height * 0.6228125,
        size.width * 0.9484961,
        size.height * 0.6235547,
        size.width * 0.9484961,
        size.height * 0.6254297);
    path_2.cubicTo(
        size.width * 0.9484961,
        size.height * 0.6254297,
        size.width * 0.9484961,
        size.height * 0.6254492,
        size.width * 0.9484961,
        size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9431641, size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9431641, size.height * 0.6229492);
    path_2.close();
    path_2.moveTo(size.width * 0.9351758, size.height * 0.6233984);
    path_2.lineTo(size.width * 0.9352539, size.height * 0.6233984);
    path_2.cubicTo(
        size.width * 0.9352539,
        size.height * 0.6240234,
        size.width * 0.9352539,
        size.height * 0.6247266,
        size.width * 0.9352734,
        size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9345313, size.height * 0.6254492);
    path_2.cubicTo(
        size.width * 0.9347461,
        size.height * 0.6247461,
        size.width * 0.9349805,
        size.height * 0.6240625,
        size.width * 0.9351758,
        size.height * 0.6233984);
    path_2.close();
    path_2.moveTo(size.width * 0.9327539, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9314258, size.height * 0.6290820);
    path_2.cubicTo(
        size.width * 0.9307227,
        size.height * 0.6310938,
        size.width * 0.9301367,
        size.height * 0.6328516,
        size.width * 0.9297461,
        size.height * 0.6344727);
    path_2.lineTo(size.width * 0.9296680, size.height * 0.6344727);
    path_2.cubicTo(
        size.width * 0.9292578,
        size.height * 0.6328125,
        size.width * 0.9287109,
        size.height * 0.6310547,
        size.width * 0.9280469,
        size.height * 0.6290820);
    path_2.lineTo(size.width * 0.9267773, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9327539, size.height * 0.6254688);
    path_2.close();
    path_2.moveTo(size.width * 0.9242578, size.height * 0.6233984);
    path_2.lineTo(size.width * 0.9242969, size.height * 0.6233984);
    path_2.cubicTo(
        size.width * 0.9244531,
        size.height * 0.6240430,
        size.width * 0.9246484,
        size.height * 0.6247461,
        size.width * 0.9248437,
        size.height * 0.6254492);
    path_2.lineTo(size.width * 0.9241797, size.height * 0.6254492);
    path_2.cubicTo(
        size.width * 0.9242187,
        size.height * 0.6247266,
        size.width * 0.9242578,
        size.height * 0.6240234,
        size.width * 0.9242578,
        size.height * 0.6233984);
    path_2.close();
    path_2.moveTo(size.width * 0.9163086, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9163086, size.height * 0.6308203);
    path_2.cubicTo(
        size.width * 0.9163086,
        size.height * 0.6343555,
        size.width * 0.9147852,
        size.height * 0.6359180,
        size.width * 0.9124219,
        size.height * 0.6359180);
    path_2.cubicTo(
        size.width * 0.9102930,
        size.height * 0.6359180,
        size.width * 0.9086914,
        size.height * 0.6343945,
        size.width * 0.9086914,
        size.height * 0.6308203);
    path_2.lineTo(size.width * 0.9086914, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9163086, size.height * 0.6254688);
    path_2.close();
    path_2.moveTo(size.width * 0.9010742, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9010742, size.height * 0.6280273);
    path_2.cubicTo(
        size.width * 0.9010742,
        size.height * 0.6305273,
        size.width * 0.9011328,
        size.height * 0.6324609,
        size.width * 0.9013086,
        size.height * 0.6346094);
    path_2.lineTo(size.width * 0.9012500, size.height * 0.6346289);
    path_2.cubicTo(
        size.width * 0.9004883,
        size.height * 0.6329883,
        size.width * 0.8995703,
        size.height * 0.6313086,
        size.width * 0.8983789,
        size.height * 0.6294336);
    path_2.lineTo(size.width * 0.8958594, size.height * 0.6254688);
    path_2.lineTo(size.width * 0.9010742, size.height * 0.6254688);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.9709766, size.height * 0.6534766);
    path_3.lineTo(size.width * 0.9709766, size.height * 0.6533984);
    path_3.cubicTo(
        size.width * 0.9726563,
        size.height * 0.6528320,
        size.width * 0.9739844,
        size.height * 0.6514258,
        size.width * 0.9739844,
        size.height * 0.6493164);
    path_3.cubicTo(
        size.width * 0.9739844,
        size.height * 0.6480859,
        size.width * 0.9735352,
        size.height * 0.6469922,
        size.width * 0.9727344,
        size.height * 0.6462695);
    path_3.cubicTo(
        size.width * 0.9717383,
        size.height * 0.6453711,
        size.width * 0.9703125,
        size.height * 0.6449609,
        size.width * 0.9681055,
        size.height * 0.6449609);
    path_3.cubicTo(
        size.width * 0.9666797,
        size.height * 0.6449609,
        size.width * 0.9651758,
        size.height * 0.6450781,
        size.width * 0.9641406,
        size.height * 0.6452930);
    path_3.lineTo(size.width * 0.9641406, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9605664, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9605664, size.height * 0.6450781);
    path_3.lineTo(size.width * 0.9584766, size.height * 0.6450781);
    path_3.lineTo(size.width * 0.9584766, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9508594, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9508594, size.height * 0.6450781);
    path_3.lineTo(size.width * 0.9487695, size.height * 0.6450781);
    path_3.lineTo(size.width * 0.9487695, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9452734, size.height * 0.6488867);
    path_3.cubicTo(
        size.width * 0.9441406,
        size.height * 0.6463867,
        size.width * 0.9418945,
        size.height * 0.6448047,
        size.width * 0.9389258,
        size.height * 0.6448047);
    path_3.cubicTo(
        size.width * 0.9360547,
        size.height * 0.6448047,
        size.width * 0.9336914,
        size.height * 0.6463477,
        size.width * 0.9324609,
        size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9242188, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9242188, size.height * 0.6450781);
    path_3.lineTo(size.width * 0.9221484, size.height * 0.6450781);
    path_3.lineTo(size.width * 0.9221484, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9186328, size.height * 0.6488867);
    path_3.cubicTo(
        size.width * 0.9175000,
        size.height * 0.6463867,
        size.width * 0.9152539,
        size.height * 0.6448047,
        size.width * 0.9122852,
        size.height * 0.6448047);
    path_3.cubicTo(
        size.width * 0.9094141,
        size.height * 0.6448047,
        size.width * 0.9070508,
        size.height * 0.6463477,
        size.width * 0.9058203,
        size.height * 0.6488867);
    path_3.lineTo(size.width * 0.8950000, size.height * 0.6488867);
    path_3.cubicTo(
        size.width * 0.8960938,
        size.height * 0.6473828,
        size.width * 0.8978320,
        size.height * 0.6465430,
        size.width * 0.9000000,
        size.height * 0.6465430);
    path_3.cubicTo(
        size.width * 0.9013281,
        size.height * 0.6465430,
        size.width * 0.9024414,
        size.height * 0.6468359,
        size.width * 0.9032227,
        size.height * 0.6472070);
    path_3.lineTo(size.width * 0.9037305, size.height * 0.6455273);
    path_3.cubicTo(
        size.width * 0.9031836,
        size.height * 0.6452344,
        size.width * 0.9019336,
        size.height * 0.6448047,
        size.width * 0.8999219,
        size.height * 0.6448047);
    path_3.cubicTo(
        size.width * 0.8949609,
        size.height * 0.6448047,
        size.width * 0.8915625,
        size.height * 0.6482031,
        size.width * 0.8915625,
        size.height * 0.6532227);
    path_3.cubicTo(
        size.width * 0.8915625,
        size.height * 0.6584766,
        size.width * 0.8949609,
        size.height * 0.6613281,
        size.width * 0.8994727,
        size.height * 0.6613281);
    path_3.cubicTo(
        size.width * 0.9014258,
        size.height * 0.6613281,
        size.width * 0.9029492,
        size.height * 0.6609570,
        size.width * 0.9037109,
        size.height * 0.6605664);
    path_3.lineTo(size.width * 0.9032813, size.height * 0.6589258);
    path_3.cubicTo(
        size.width * 0.9024414,
        size.height * 0.6593359,
        size.width * 0.9011719,
        size.height * 0.6595898,
        size.width * 0.8999023,
        size.height * 0.6595898);
    path_3.cubicTo(
        size.width * 0.8960156,
        size.height * 0.6595898,
        size.width * 0.8937500,
        size.height * 0.6570703,
        size.width * 0.8937500,
        size.height * 0.6531445);
    path_3.cubicTo(
        size.width * 0.8937500,
        size.height * 0.6513867,
        size.width * 0.8941992,
        size.height * 0.6499609,
        size.width * 0.8949805,
        size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9058008, size.height * 0.6488867);
    path_3.cubicTo(
        size.width * 0.9051953,
        size.height * 0.6501172,
        size.width * 0.9048438,
        size.height * 0.6515625,
        size.width * 0.9048438,
        size.height * 0.6532227);
    path_3.cubicTo(
        size.width * 0.9048438,
        size.height * 0.6580664,
        size.width * 0.9078125,
        size.height * 0.6613477,
        size.width * 0.9120508,
        size.height * 0.6613477);
    path_3.cubicTo(
        size.width * 0.9161328,
        size.height * 0.6613477,
        size.width * 0.9194922,
        size.height * 0.6584375,
        size.width * 0.9194922,
        size.height * 0.6529102);
    path_3.cubicTo(
        size.width * 0.9194922,
        size.height * 0.6514062,
        size.width * 0.9191797,
        size.height * 0.6500586,
        size.width * 0.9186523,
        size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9221680, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9221680, size.height * 0.6610742);
    path_3.lineTo(size.width * 0.9310742, size.height * 0.6610742);
    path_3.lineTo(size.width * 0.9310742, size.height * 0.6593359);
    path_3.lineTo(size.width * 0.9242383, size.height * 0.6593359);
    path_3.lineTo(size.width * 0.9242383, size.height * 0.6488672);
    path_3.lineTo(size.width * 0.9324609, size.height * 0.6488672);
    path_3.cubicTo(
        size.width * 0.9318555,
        size.height * 0.6500977,
        size.width * 0.9315039,
        size.height * 0.6515430,
        size.width * 0.9315039,
        size.height * 0.6532031);
    path_3.cubicTo(
        size.width * 0.9315039,
        size.height * 0.6580469,
        size.width * 0.9344727,
        size.height * 0.6613281,
        size.width * 0.9386914,
        size.height * 0.6613281);
    path_3.cubicTo(
        size.width * 0.9427734,
        size.height * 0.6613281,
        size.width * 0.9461328,
        size.height * 0.6584180,
        size.width * 0.9461328,
        size.height * 0.6528906);
    path_3.cubicTo(
        size.width * 0.9461328,
        size.height * 0.6513867,
        size.width * 0.9458203,
        size.height * 0.6500391,
        size.width * 0.9452930,
        size.height * 0.6488672);
    path_3.lineTo(size.width * 0.9487891, size.height * 0.6488672);
    path_3.lineTo(size.width * 0.9487891, size.height * 0.6544727);
    path_3.cubicTo(
        size.width * 0.9487891,
        size.height * 0.6594336,
        size.width * 0.9512695,
        size.height * 0.6613086,
        size.width * 0.9545313,
        size.height * 0.6613086);
    path_3.cubicTo(
        size.width * 0.9580078,
        size.height * 0.6613086,
        size.width * 0.9605859,
        size.height * 0.6592969,
        size.width * 0.9605859,
        size.height * 0.6543750);
    path_3.lineTo(size.width * 0.9605859, size.height * 0.6488477);
    path_3.lineTo(size.width * 0.9641602, size.height * 0.6488477);
    path_3.lineTo(size.width * 0.9641602, size.height * 0.6610352);
    path_3.lineTo(size.width * 0.9662305, size.height * 0.6610352);
    path_3.lineTo(size.width * 0.9662305, size.height * 0.6541016);
    path_3.lineTo(size.width * 0.9681836, size.height * 0.6541016);
    path_3.cubicTo(
        size.width * 0.9700586,
        size.height * 0.6541797,
        size.width * 0.9709180,
        size.height * 0.6550000,
        size.width * 0.9713867,
        size.height * 0.6572070);
    path_3.cubicTo(
        size.width * 0.9718359,
        size.height * 0.6591992,
        size.width * 0.9721875,
        size.height * 0.6605859,
        size.width * 0.9724609,
        size.height * 0.6610352);
    path_3.lineTo(size.width * 0.9745898, size.height * 0.6610352);
    path_3.cubicTo(
        size.width * 0.9742578,
        size.height * 0.6604102,
        size.width * 0.9738672,
        size.height * 0.6588672,
        size.width * 0.9733594,
        size.height * 0.6566406);
    path_3.cubicTo(
        size.width * 0.9729492,
        size.height * 0.6550391,
        size.width * 0.9722070,
        size.height * 0.6538867,
        size.width * 0.9709766,
        size.height * 0.6534766);
    path_3.close();
    path_3.moveTo(size.width * 0.9121484, size.height * 0.6465039);
    path_3.cubicTo(
        size.width * 0.9140039,
        size.height * 0.6465039,
        size.width * 0.9153320,
        size.height * 0.6475000,
        size.width * 0.9161719,
        size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9080859, size.height * 0.6488867);
    path_3.cubicTo(
        size.width * 0.9089453,
        size.height * 0.6474609,
        size.width * 0.9102930,
        size.height * 0.6465039,
        size.width * 0.9121484,
        size.height * 0.6465039);
    path_3.close();
    path_3.moveTo(size.width * 0.9172656, size.height * 0.6530078);
    path_3.cubicTo(
        size.width * 0.9172656,
        size.height * 0.6566406,
        size.width * 0.9154102,
        size.height * 0.6596680,
        size.width * 0.9121289,
        size.height * 0.6596680);
    path_3.cubicTo(
        size.width * 0.9088672,
        size.height * 0.6596680,
        size.width * 0.9070312,
        size.height * 0.6566016,
        size.width * 0.9070312,
        size.height * 0.6531836);
    path_3.cubicTo(
        size.width * 0.9070312,
        size.height * 0.6515820,
        size.width * 0.9074023,
        size.height * 0.6500781,
        size.width * 0.9081055,
        size.height * 0.6489063);
    path_3.lineTo(size.width * 0.9161914, size.height * 0.6489063);
    path_3.cubicTo(
        size.width * 0.9168945,
        size.height * 0.6500781,
        size.width * 0.9172656,
        size.height * 0.6515625,
        size.width * 0.9172656,
        size.height * 0.6530078);
    path_3.close();
    path_3.moveTo(size.width * 0.9388086, size.height * 0.6465039);
    path_3.cubicTo(
        size.width * 0.9406641,
        size.height * 0.6465039,
        size.width * 0.9419922,
        size.height * 0.6475000,
        size.width * 0.9428320,
        size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9347461, size.height * 0.6488867);
    path_3.cubicTo(
        size.width * 0.9355859,
        size.height * 0.6474609,
        size.width * 0.9369336,
        size.height * 0.6465039,
        size.width * 0.9388086,
        size.height * 0.6465039);
    path_3.close();
    path_3.moveTo(size.width * 0.9439062, size.height * 0.6530078);
    path_3.cubicTo(
        size.width * 0.9439062,
        size.height * 0.6566406,
        size.width * 0.9420508,
        size.height * 0.6596680,
        size.width * 0.9387695,
        size.height * 0.6596680);
    path_3.cubicTo(
        size.width * 0.9355078,
        size.height * 0.6596680,
        size.width * 0.9336719,
        size.height * 0.6566016,
        size.width * 0.9336719,
        size.height * 0.6531836);
    path_3.cubicTo(
        size.width * 0.9336719,
        size.height * 0.6515820,
        size.width * 0.9340430,
        size.height * 0.6500781,
        size.width * 0.9347461,
        size.height * 0.6489063);
    path_3.lineTo(size.width * 0.9428320, size.height * 0.6489063);
    path_3.cubicTo(
        size.width * 0.9435352,
        size.height * 0.6500781,
        size.width * 0.9439062,
        size.height * 0.6515625,
        size.width * 0.9439062,
        size.height * 0.6530078);
    path_3.close();
    path_3.moveTo(size.width * 0.9584570, size.height * 0.6545508);
    path_3.cubicTo(
        size.width * 0.9584570,
        size.height * 0.6580859,
        size.width * 0.9569336,
        size.height * 0.6596484,
        size.width * 0.9545703,
        size.height * 0.6596484);
    path_3.cubicTo(
        size.width * 0.9524219,
        size.height * 0.6596484,
        size.width * 0.9508398,
        size.height * 0.6581250,
        size.width * 0.9508398,
        size.height * 0.6545508);
    path_3.lineTo(size.width * 0.9508398, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9584570, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9584570, size.height * 0.6545508);
    path_3.close();
    path_3.moveTo(size.width * 0.9662109, size.height * 0.6467383);
    path_3.cubicTo(
        size.width * 0.9665430,
        size.height * 0.6466406,
        size.width * 0.9672461,
        size.height * 0.6465430,
        size.width * 0.9682422,
        size.height * 0.6465430);
    path_3.cubicTo(
        size.width * 0.9701758,
        size.height * 0.6465625,
        size.width * 0.9715625,
        size.height * 0.6472852,
        size.width * 0.9718555,
        size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9661914, size.height * 0.6488867);
    path_3.lineTo(size.width * 0.9661914, size.height * 0.6467383);
    path_3.close();
    path_3.moveTo(size.width * 0.9683203, size.height * 0.6525977);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.6525977);
    path_3.lineTo(size.width * 0.9662109, size.height * 0.6489063);
    path_3.lineTo(size.width * 0.9718750, size.height * 0.6489063);
    path_3.cubicTo(
        size.width * 0.9719141,
        size.height * 0.6491016,
        size.width * 0.9719336,
        size.height * 0.6493164,
        size.width * 0.9719336,
        size.height * 0.6495508);
    path_3.cubicTo(
        size.width * 0.9719336,
        size.height * 0.6513867,
        size.width * 0.9705273,
        size.height * 0.6525977,
        size.width * 0.9683203,
        size.height * 0.6525977);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
