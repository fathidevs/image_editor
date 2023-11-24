import 'package:flutter/material.dart';

class ImageModel extends StatefulWidget {
  final List<Widget> children;
  final Map<int, double> topPosition;
  final Map<int, double> leftPosition;

  final Function getIndex;

  const ImageModel({
    super.key,
    required this.children,
    required this.topPosition,
    required this.leftPosition,

    required this.getIndex,
  });

  @override
  State<ImageModel> createState() => ImageModelState();
}

class ImageModelState extends State<ImageModel> {
  pickedBorder(bool picked) {
    return picked
        ? Border.all(
            color: Colors.white,
            width: 1.5,
          )
        : Border.all(
            color: Colors.transparent,
            width: 0.0,
          );
  }

  int pickedIndex = -1;

  @override
  Widget build(BuildContext context) {
    List<Widget> listOfImages =List<Positioned>.generate(widget.children.length, (i){
      return Positioned(
              top: widget.topPosition[i],
              left: widget.leftPosition[i],
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.getIndex(i);
                    pickedIndex = i;
                  });
                },
                child: Container(
                    decoration:
                        BoxDecoration(border: pickedBorder(i == pickedIndex)),
                    child: widget.children[i]),
              ),
            );
    });
    
    return Container(
      color: Colors.black.withOpacity(.5),
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Stack(
          children: listOfImages
        ),
      ),
    );
  }
}
