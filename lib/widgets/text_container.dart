import 'package:flutter/material.dart';
import '../models/text_model.dart';

class TextContainer extends StatelessWidget {
  final TextModel model;
  const TextContainer({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      model.text!,
    );
  }
}
