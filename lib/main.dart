import 'package:flutter/material.dart';
import 'package:sample_viewer/input_page/input_page.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
