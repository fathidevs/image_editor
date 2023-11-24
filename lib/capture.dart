import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Capture {
  final GlobalKey key;
  const Capture({required this.key});

  Future<Uint8List> png() async {

  
  final boundary = key.currentContext!.findRenderObject() as RenderRepaintBoundary;

  final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  
  final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  
  final Uint8List pngBytes = byteData!.buffer.asUint8List();
  
  return pngBytes;
}
}