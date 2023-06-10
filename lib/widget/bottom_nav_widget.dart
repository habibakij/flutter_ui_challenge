import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/widget/text_widget.dart';

import '../utils/style_management.dart';

class BottomNavWidget extends StatelessWidget {
  String image, title;
  int isActive;
  BottomNavWidget({super.key, required this.image, required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: isActive == 1 ? 100.0 : 70.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 25.0,
            height: 25.0,
          ),
          const SizedBox(width: 5.0),
          Visibility(
            visible: isActive == 1 ? true : false,
            child: TextWidget(title: title, style: StyleManagement.testStyleAppColorBold16),
          )
        ],
      ),
    );
  }
}
