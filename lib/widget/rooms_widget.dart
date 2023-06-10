
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui_test/widget/text_widget.dart';
import '../utils/color_management.dart';
import '../utils/style_management.dart';

class RoomsWidget extends StatelessWidget {
  String degree, image, title, indicator, indTitle;
  RoomsWidget({super.key, required this.degree, required this.image, required this.title, required this.indicator, required this.indTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 25,
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
              decoration: BoxDecoration(
                color: CustomColor.appColor,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Text("$degree\u2103", style: StyleManagement.testStyleWhite14),
            ),
          ),
          Image.asset(
            image,
            width: 100.0,
            height: 80.0,
            fit: BoxFit.fill,
          ),
          TextWidget(title: title, style: StyleManagement.testStyleBlackBold16),
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5.0),
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
                decoration: BoxDecoration(
                  color: HexColor("#FFE266"),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: TextWidget(title: indicator, style: StyleManagement.testStyleBlack14),
              ),
              TextWidget(title: indTitle, style: StyleManagement.testStyleBlack12),
            ],
          ),

        ],
      ),
    );
  }
}
