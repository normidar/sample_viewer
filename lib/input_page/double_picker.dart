import 'package:flutter/material.dart';
import 'package:sample_viewer/element/double_element.dart';

class DoublePickerTile extends StatefulWidget {
  IntElement ele;
  DoublePickerTile(this.ele, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _DoublePicker();
}

class _DoublePicker extends State<DoublePickerTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.ele.description + "：" + widget.ele.value.toString()),
      leading: IconButton(
          onPressed: () {
            setState(() {
              widget.ele.value--;
            });
          },
          icon: const Icon(Icons.arrow_left)),
      trailing: IconButton(
          onPressed: () {
            setState(() {
              widget.ele.value++;
            });
          },
          icon: const Icon(Icons.arrow_right)),
    );
  }
}
