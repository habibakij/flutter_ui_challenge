import 'package:flutter/material.dart';

class Utils {
  /// SharedPreferences key
/*
  static const userName = "userName";
  static const userEmail = "userEmail";
  static const userPhone = "userPhone";
  static const userAddress = "userAddress";
  static const userPassword = "userPassword";
  static const userAvater = "userAvater";
*/

  /// screen name
  static const homeScreen = "/home_screen";
  static const screenTwo = "/screen_two";
  static const screenThree = "/screen_three";
  static const screenFour = "/screen_four";

  /// screen dynamic size
  static var mediaQueryHeight = 0.0, mediaQueryWidth = 0.0;
  static void dynamicScreenSize(BuildContext context) {
    mediaQueryHeight = MediaQuery.of(context).size.height;
    mediaQueryWidth = MediaQuery.of(context).size.width;
  }

  /// custom toast
/*  static customToast(String msg, int isRed) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: isRed == 1 ? Colors.red[200] : Colors.grey[400],
        textColor: Colors.black,
        fontSize: 14.0);
  }*/

}
