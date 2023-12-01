import 'package:flutter/material.dart';

class CustomStlWidgets {
  slider({
    double min = 0,
    required double max,
    required double value,
    required int pickedImageIndex,
    required Function onChanged,
    IconData? icon,
  }) {
    return Row(
      children: [
        Slider(
          min: min,
          max: max,
          value: value,
          label: "label: $value",
          onChanged: (newValue) {
            onChanged(newValue);
          },
        ),
        Icon(icon),
      ],
    );
  }
}
