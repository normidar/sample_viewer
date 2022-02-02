import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_viewer/element/color_element.dart';
import 'package:sample_viewer/element/double_element.dart';
import 'package:sample_viewer/element/element.dart';
import 'package:sample_viewer/sets/calendar/calendar_page.dart';
import 'package:sample_viewer/sets/sub_set.dart';

class CalendarSet extends SubSet {
  // Color color1;
  // Color color2;
  // Color color3;
  // Color tapColor;
  // double round;
  // double height;
  CalendarSet() {
    _elements = [];
    _elements.add(ColorElement("カラー1", Colors.green));
    _elements.add(ColorElement("カラー2", Colors.yellow));
    _elements.add(ColorElement("カラー3", Colors.pinkAccent.shade100));
    _elements.add(ColorElement("ボタンカラー", Colors.blue));
    _elements.add(IntElement("日付のヨコ長さ", 50));
    _elements.add(IntElement("高さ", 50));
    _elements.add(ColorElement("文字の色", Colors.grey));
  }

  late List<UnitElement> _elements;
  @override
  List<UnitElement> get elements => _elements;

  T getUnitElement<T>(int index) {
    return _elements[index] as T;
  }

  @override
  Widget getLinkedPage() {
    return CalendarPage(this);
  }
}
