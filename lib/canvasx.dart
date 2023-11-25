
import 'package:flutter/material.dart';
import 'package:image_editor/kits.dart';


class CanvasX extends StatefulWidget {

  const CanvasX(
      {super.key});

  @override
  State<CanvasX> createState() => _CanvasXState();
}

class _CanvasXState extends State<CanvasX> {
  
  
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        color: Colors.transparent,
        child: const Kits(),
      ),
    );
  }
}
