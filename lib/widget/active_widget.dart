
import 'package:flutter/cupertino.dart';
import 'package:ui_test/widget/text_widget.dart';
import '../utils/color_management.dart';
import '../utils/style_management.dart';

class ActiveWidget extends StatelessWidget {
  String tempImage, tempTitle, temp, title, subTitle, acStatusImage;
  int isAc;
  ActiveWidget({super.key, required this.tempImage, required this.tempTitle, required this.temp, required this.title, required this.subTitle, required this.acStatusImage, required this.isAc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: (MediaQuery.of(context).size.width / 2) - 25,
      padding: const EdgeInsets.only(bottom: 5.0, left: 8.0, right: 8.0),
      decoration: BoxDecoration(
        color: CustomColor.activeShadowColor,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                tempImage,
                width: 70.0,
                height: 50.0,
                fit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(title: tempTitle, style: StyleManagement.testStyleWhite12),
                  isAc == 1 ? Text("$temp\u2103", style: StyleManagement.testStyleWhiteBold18) :
                  TextWidget(title: temp, style: StyleManagement.testStyleWhiteBold18),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(title: title, style: StyleManagement.testStyleWhiteBold18),
                  TextWidget(title: subTitle, style: StyleManagement.testStyleWhite12),
                ],
              ),
              Image.asset(
                acStatusImage,
                width: 70.0,
                height: 30.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
