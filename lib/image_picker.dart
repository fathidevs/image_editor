import 'dart:io';

import 'package:image_picker/image_picker.dart';

class PickImg {
  Future fromGallery() async {
    final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    //  await ImagePicker().
    if(returnImage == null) return;
    return File(returnImage.path);
  }
}