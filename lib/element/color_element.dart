import 'package:flutter/material.dart';

import 'element.dart';

class ColorElement extends UnitElement {
  ColorElement(String description, this.value) : super(description);
  Color value = const Color(0xFFF0F0F0);
}
