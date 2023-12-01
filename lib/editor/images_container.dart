import 'dart:io';

import 'package:flutter/material.dart';

class ImagesContainer extends StatelessWidget {
  final File content;
  final Map<String, double?> dimensions;
  final Map<String, double?> position;

  const ImagesContainer({
    super.key,
    required this.content,
    required this.dimensions,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dimensions["w"],
      height: dimensions["h"],
      child: Image.file(content),
    );
  }
}
