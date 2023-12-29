import 'package:flutter/material.dart';

import 'defaults.dart';
import 'kit_selector.dart';

class SelectedKitColor {
  Color fullShirt;
  Color rightSock;
  Color leftSock;
  Color rightShortSleeve;
  Color leftShortSleeve;
  Color rightLongSleeve;
  Color leftLongSleeve;
  Color rightUnderSleeve;
  Color leftUnderSleeve;
  Color rightShort;
  Color leftShort;
  Color rings;
  Color circle;
  Color shirtNumberColor;
  Color shortNumberColor;
  SelectedKitColor({
    this.fullShirt = Defaults.kitLightColor,
    this.rightSock = Defaults.kitLightColor,
    this.leftSock = Defaults.kitLightColor,
    this.rightShortSleeve = Defaults.kitLightColor,
    this.leftShortSleeve = Defaults.kitLightColor,
    this.rightLongSleeve = Defaults.kitLightColor,
    this.leftLongSleeve = Defaults.kitLightColor,
    this.rightUnderSleeve = Defaults.kitLightColor,
    this.leftUnderSleeve = Defaults.kitLightColor,
    this.rightShort = Defaults.kitLightColor,
    this.leftShort = Defaults.kitLightColor,
    this.rings = Defaults.kitLightColor,
    this.circle = Defaults.kitLightColor,
    this.shirtNumberColor = Defaults.kitLightNumberColor,
    this.shortNumberColor = Defaults.kitLightNumberColor,
  });

  paint(KitSelector kitSelector, Color newColor) {
    if (kitSelector.fullShirt) {
      fullShirt = newColor;
    }
    if (kitSelector.leftShort) {
      leftShort = newColor;
    }
  }

  history(KitSelector kitSelector) {
    if (kitSelector.fullShirt) {
      return fullShirt;
    }
    if (kitSelector.leftShort) {
      return leftShort;
    }
    return Colors.white;
  }
}
