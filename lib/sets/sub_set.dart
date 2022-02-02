import 'package:flutter/material.dart';
import 'package:sample_viewer/element/element.dart';

abstract class SubSet {
  List<UnitElement> get elements;
  Widget getLinkedPage();
}
