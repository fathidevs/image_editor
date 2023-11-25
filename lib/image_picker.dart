import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImg {
  
  
  Future fromGallery(double maxWidth) async {
    final returnImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      
    );
    //  await ImagePicker().
    if (returnImage == null) return;

    return File(returnImage.path);
  }

  Future<ui.Size> imageDimension(File file) async {
    final bytes = file.readAsBytes();
    final codec = await ui.instantiateImageCodec(await bytes);
    final frameInfo = await codec.getNextFrame();
    final image = frameInfo.image;
    final width = image.width.toDouble();
    final height = image.height.toDouble();
    return Size(width, height);
  }
}
