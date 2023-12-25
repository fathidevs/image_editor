import 'dart:math';

import 'package:flutter/material.dart';

class LogosPlacement extends StatelessWidget {
  const LogosPlacement({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.sizeOf(context).width;
    return AspectRatio(
      aspectRatio: 1 / 1,
      // color: Colors.amber.withOpacity(.1),
      // width: w,
      // height: w,
      child: Stack(
        children: [
          Positioned(
              left: w * .703,
              top: w * .333,
              child: Transform.rotate(
                angle: (-90 / 180) * pi,
                child: Container(
                  width: w * .152,
                  height: w * .07,
                  color: Colors.red.withOpacity(0.3),
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/ad.png',
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
