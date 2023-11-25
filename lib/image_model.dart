import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_editor/image_picker.dart';

class ImageModel extends StatefulWidget {
  final List<File> children;
  final Map<int, double> topPosition;
  final Map<int, double> leftPosition;
  final Map<int, double> scale;
  final Map<int, double> rotate;
  final Map<int, Size> size;
  final Function getIndex;
  final bool activeStroke;

  final double width;
  final int pickedIndex;

  const ImageModel({
    super.key,
    required this.children,
    required this.topPosition,
    required this.leftPosition,
    required this.scale,
    required this.rotate,
    required this.size,
    required this.getIndex,
    this.activeStroke = false,
    required this.width,
    required this.pickedIndex,
  });

  @override
  State<ImageModel> createState() => ImageModelState();
}

class ImageModelState extends State<ImageModel> {
  // int pickedIndex = -1;

  @override
  Widget build(BuildContext context) {
    
    pickedBorder(bool picked) {
      return picked && widget.activeStroke
          ? Border.all(
              color: Colors.green,
              width: 1.5,
            )
          : Border.all(
              color: Colors.transparent,
              width: 1.5,
            );
    }

    List<Widget> listOfImages =
        List<Positioned>.generate(widget.children.length, (i) {
      Image img = Image.file(widget.children[i]);
      Size? size = widget.size[i];
      return Positioned(
        top: widget.topPosition[i]! - (widget.width * .4),
        // left: widget.leftPosition[i]! - (widget.width * .9),
        left: widget.leftPosition[i]!-(widget.width*.9),
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.getIndex(i);
              // pickedIndex = i;
            });
          },
          child: Transform.scale(
            alignment: Alignment.topLeft,
            scale: widget.scale[i],
            // origin: Offset(-0.5, -0.5),
            child: Transform.rotate(
              angle: (widget.rotate[i]! * pi) / 180,
              child: Container(
                width: widget.width,
                // height: size != null ? size.height : widget.width,
                decoration: BoxDecoration(
                    border: pickedBorder(i == widget.pickedIndex)),
                child: Opacity(
                  opacity: widget.activeStroke ? 0.1 : 1.0,
                  child: img,
                ),
              ),
            ),
          ),
        ),
      );
    });
    List<Widget> listOfContainers =
        List<Positioned>.generate(1, (i) {
      Widget img = Container(width: 100,height: 100,color: Colors.amber,);
      Size? size = widget.size[i];
      return Positioned(
        // top: widget.topPosition[i]??0.0,
        left: widget.leftPosition[i],
        // left: widget.width*.5,
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.getIndex(i);
              // pickedIndex = i;
            });
          },
          child: Transform.scale(
            scale: widget.scale[i]??1.0,
            // origin: Offset(-0.5, -0.5),
            child: Transform.rotate(
              angle: (widget.rotate[i]??0.0 * pi) / 180,
              child: Container(
                width: widget.width,
                // height: size != null ? size.height : widget.width,
                decoration: BoxDecoration(
                    border: pickedBorder(i == widget.pickedIndex)),
                child: Opacity(
                  opacity: widget.activeStroke ? 0.1 : 1.0,
                  child: img,
                ),
              ),
            ),
          ),
        ),
      );
    });

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(children: listOfImages),
    );
  }
}
