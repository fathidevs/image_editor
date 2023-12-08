import 'package:flutter/material.dart';

class CustomStlWidgets {
  Widget slider({
    double min = 0,
    required double max,
    required double value,
    
    required Function onChanged,
    IconData? icon,
    required bool active,
  }) {
    return Row(
      children: [
        Slider(
          min: min,
          max: max,
          value: value,
          label: "label: $value",
          onChanged: active ? (newValue) => onChanged(newValue) : null,
        ),
        Icon(icon),
      ],
    );
  }

  Widget checkBox(String title, bool value, Function onChanged) {
    return CheckboxListTile(
      title: Text(title),
      value: value,
      onChanged: (value) => onChanged(value),
    );
  }
}
