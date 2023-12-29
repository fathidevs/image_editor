import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerx {
  static pick({
    Color defaultColor = Colors.white,
    required Function(Color color) onColorChanged,
  }) {
    return ColorPicker(
      enableAlpha: false,
      hexInputBar: false,
      displayThumbColor: true,
      pickerAreaHeightPercent: .5,
      pickerAreaBorderRadius: const BorderRadius.all(Radius.circular(15)),
      labelTypes: const [],
      pickerColor: defaultColor,
      onColorChanged: (color) => onColorChanged(color),
    );
  }
}
