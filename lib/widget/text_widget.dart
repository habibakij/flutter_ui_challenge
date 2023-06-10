import 'package:flutter/cupertino.dart';
import 'package:ui_test/utils/style_management.dart';

class TextWidget extends StatelessWidget {
  String title;
  TextStyle style;
  TextWidget({super.key, required this.title, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }

}