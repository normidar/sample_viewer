import 'package:flutter/material.dart';
import 'package:sample_viewer/element/color_element.dart';
import 'package:sample_viewer/element/double_element.dart';
import 'package:sample_viewer/input_page/color_picker.dart';
import 'package:sample_viewer/input_page/double_picker.dart';
import 'package:sample_viewer/sets/calendar/calendar_set.dart';

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sample_viewer"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return _set.getLinkedPage();
              }));
            },
            icon: const Icon(Icons.online_prediction_sharp),
          )
        ],
      ),
      body: ListView(
        children: getChildren(),
      ),
    );
  }

  final _set = CalendarSet();
  List<Widget> getChildren() {
    List<Widget> rt = [];
    for (var i in _set.elements) {
      if (i is ColorElement) {
        rt.add(ColorPickerTile(i));
      } else if (i is IntElement) {
        rt.add(DoublePickerTile(i));
      }
    }
    return rt;
  }
}
