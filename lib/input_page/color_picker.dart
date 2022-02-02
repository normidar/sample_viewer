import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:sample_viewer/element/color_element.dart';

class ColorPickerTile extends StatefulWidget {
  ColorElement ele;
  ColorPickerTile(this.ele, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ColorPicker();
}

class _ColorPicker extends State<ColorPickerTile> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      color: widget.ele.value,
      child: ListTile(
        title: Text(widget.ele.description),
        onTap: () {
          showPicker();
        },
      ),
    );
  }

  void showPicker() {
    showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: HueRingPicker(
            pickerColor: Colors.white,
            onColorChanged: (c) {
              setState(() {
                widget.ele.value = c;
              });
            },
            enableAlpha: false,
          ),
          // Use Material color picker:
          //
          // child: MaterialPicker(
          //   pickerColor: pickerColor,
          //   onColorChanged: changeColor,
          //   showLabel: true, // only on portrait mode
          // ),
          //
          // Use Block color picker:
          //
          // child: BlockPicker(
          //   pickerColor: currentColor,
          //   onColorChanged: changeColor,
          // ),
          //
          // child: MultipleChoiceBlockPicker(
          //   pickerColors: currentColors,
          //   onColorsChanged: changeColors,
          // ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Got it'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      context: context,
    );
  }
}
