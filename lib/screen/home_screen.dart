
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui_test/screen/screen_four.dart';
import 'package:ui_test/screen/screen_three.dart';
import 'package:ui_test/screen/screen_two.dart';
import 'package:ui_test/utils/color_management.dart';
import 'package:ui_test/utils/style_management.dart';
import '../widget/active_widget.dart';
import '../widget/bottom_nav_widget.dart';
import '../widget/rooms_widget.dart';
import '../widget/text_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Builder(builder: (BuildContext context) {
            return Container(
              height: double.infinity,
              margin: const EdgeInsets.only(bottom: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.white,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    color: CustomColor.appColor,
                  ),
                ],
              ),
            );
          }),
          Positioned(
            child: Column(
              children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: CustomColor.appColor,
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                left: -30.0,
                                top: -20.0,
                                child: RotatedBox(
                                  quarterTurns: 2,
                                  child: Image.asset(
                                    'assets/images/cloud.png',
                                    width: 100.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: -10.0,
                                top: -30.0,
                                child: RotatedBox(
                                  quarterTurns: 2,
                                  child: Image.asset(
                                    'assets/images/cloud.png',
                                    width: 100.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(title: "Good Morning,", style: StyleManagement.testStyleWhiteBold18),
                                        TextWidget(title: "Kimberly Mastrengelo", style: StyleManagement.testStyleBlack12)
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5.0),
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                      ),
                                      child: const Icon(Icons.notifications, size: 30, color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Card(
                            //margin: const EdgeInsets.all(16.0),
                            margin: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                            elevation: 3.0,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            color: CustomColor.cardShadowColor,
                            child: Container(
                              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            const Stack(
                                              children: [
                                                Positioned(
                                                  child: Icon(
                                                    Icons.sunny,
                                                    size: 60.0,
                                                    color: Colors.amber,
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 0.0,
                                                  bottom: -10.0,
                                                  child: Icon(
                                                    Icons.cloud,
                                                    size: 50,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(width: 10.0),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                TextWidget(title: "jun 07, 2023 01:43 pm", style: StyleManagement.testStyleBlack12),
                                                TextWidget(title: "Cloudy", style: StyleManagement.testStyleBlackBold18),
                                                TextWidget(title: "Dhaka, Bangladesh", style: StyleManagement.testStyleBlack12),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Text("90\u2103", style: StyleManagement.testStyleBlackBold18,),
                                      ],
                                    ),
                                  ),
                                  const Divider(height: 1, color: Colors.black,),
                                  Container(
                                    padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(16.0),
                                          decoration: const BoxDecoration(
                                              color: Colors.white54,
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets.all(2.0),
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                                    ),
                                                    child: Image.asset(
                                                      'assets/images/humidity.png',
                                                      width: 20.0,
                                                      height: 20.0,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  TextWidget(title: "97", style: StyleManagement.testStyleBlackBold16),
                                                  TextWidget(title: "%", style: StyleManagement.testStyleBlack12),
                                                ],
                                              ),
                                              const SizedBox(height: 5.0),
                                              TextWidget(title: "Humidity", style: StyleManagement.testStyleBlack16,)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(16.0),
                                          decoration: const BoxDecoration(
                                              color: Colors.white54,
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets.all(2.0),
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                                    ),
                                                    child: Image.asset(
                                                      'assets/images/eyes.png',
                                                      width: 20.0,
                                                      height: 20.0,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  TextWidget(title: "7", style: StyleManagement.testStyleBlackBold16,),
                                                  TextWidget(title: "km", style: StyleManagement.testStyleBlack12),
                                                ],
                                              ),
                                              const SizedBox(height: 5.0),
                                              TextWidget(title: "Visibility", style: StyleManagement.testStyleBlack16,)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(16.0),
                                          decoration: const BoxDecoration(
                                              color: Colors.white54,
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets.all(2.0),
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                                    ),
                                                    child: Image.asset(
                                                      'assets/images/wind.png',
                                                      width: 20.0,
                                                      height: 20.0,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  TextWidget(title: "97", style: StyleManagement.testStyleBlackBold16,),
                                                  TextWidget(title: "%", style: StyleManagement.testStyleBlack12),
                                                ],
                                              ),
                                              const SizedBox(height: 5.0),
                                              TextWidget(title: "NE Wind", style: StyleManagement.testStyleBlack16,)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Icon(
                          Icons.sunny,
                          size: 60,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50.0)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(title: "Rooms", style: StyleManagement.testStyleBlackBold16),
                            Text(
                              "See All",
                              style: TextStyle(
                                color: CustomColor.appColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RoomsWidget(degree: "19", image: "assets/images/seat_lamp.png", title: "Living Room", indicator: "5", indTitle: "Devices"),
                            RoomsWidget(degree: "12", image: "assets/images/badroom.png", title: "Bad Room", indicator: "8", indTitle: "Devices"),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextWidget(title: "Active", style: StyleManagement.testStyleBlackBold16),
                                Container(
                                  margin: const EdgeInsets.only(left: 5.0),
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
                                  decoration: BoxDecoration(
                                    color: CustomColor.appColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: TextWidget(title: "8", style: StyleManagement.testStyleWhiteBold14),
                                ),
                              ],
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                  color: CustomColor.appColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActiveWidget(tempImage: "assets/images/room_temp.png", tempTitle: "Temperature", temp: "19", title: "AC", subTitle: "Living room", acStatusImage: "assets/images/off.png", isAc: 1),
                            ActiveWidget(tempImage: "assets/images/three_lamp.png", tempTitle: "Colour", temp: "White", title: "Lamp", subTitle: "Dining room", acStatusImage: "assets/images/off.png", isAc: 0),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 65.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColor.appColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavWidget(image: "assets/images/home_fill.png", title: "Home", isActive: 1),
            InkWell(
              child: BottomNavWidget(image: "assets/images/net.png", title: "Smart", isActive: 0),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
            ),
            InkWell(
              child: BottomNavWidget(image: "assets/images/pei.png", title: "Usage", isActive: 0),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
              },
            ),
            InkWell(
              child: BottomNavWidget(image: "assets/images/user.png", title: "User", isActive: 0),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
