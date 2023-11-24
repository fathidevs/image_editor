import 'package:flutter/material.dart';
import 'package:image_editor/image_model.dart';

class PickedImages extends StatefulWidget {
  const PickedImages({super.key});

  @override
  State<PickedImages> createState() => _PickedImagesState();
}

class _PickedImagesState extends State<PickedImages> {
  bool pik = true;
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(.5),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Stack(
          children: [
            
            ],
        ),
      ),
    );
  }
}
