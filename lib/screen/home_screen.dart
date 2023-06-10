import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui_test/screen/screen_four.dart';
import 'package:ui_test/screen/screen_three.dart';
import 'package:ui_test/screen/screen_two.dart';
import 'package:ui_test/utils/color_management.dart';
import 'package:ui_test/utils/style_management.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
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
                                      children: const [
                                        Text(
                                          "Good Morning,",
                                          style: StyleManagement.testStyleWhiteBold18,
                                        ),
                                        Text(
                                          "Kimberly Mastrengelo",
                                          style: StyleManagement.testStyleBlack12,
                                        ),
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
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                Positioned(
                                                  child: Icon(
                                                    Icons.sunny,
                                                    size: 60,
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
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("jun 07, 2023 01:43 pm", style: StyleManagement.testStyleBlack12,),
                                                Text("Cloudy", style: StyleManagement.testStyleBlackBold18,),
                                                Text("Dhaka, Bangladesh", style: StyleManagement.testStyleBlack12,),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text("90\u2103", style: StyleManagement.testStyleBlackBold18,),
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
                                                  const Text("97", style: StyleManagement.testStyleBlackBold16,),
                                                  const Text("%", style: StyleManagement.testStyleBlack12),
                                                ],
                                              ),
                                              const SizedBox(height: 5.0),
                                              const Text("Humidity", style: StyleManagement.testStyleBlack16,)
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
                                                  const Text("7", style: StyleManagement.testStyleBlackBold16,),
                                                  const Text("km", style: StyleManagement.testStyleBlack12),
                                                ],
                                              ),
                                              const SizedBox(height: 5.0),
                                              const Text("Visibility", style: StyleManagement.testStyleBlack16,)
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
                                                  const Text("97", style: StyleManagement.testStyleBlackBold16,),
                                                  const Text("%", style: StyleManagement.testStyleBlack12),
                                                ],
                                              ),
                                              const SizedBox(height: 5.0),
                                              const Text("NE Wind", style: StyleManagement.testStyleBlack16,)
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
                            const Text("Rooms", style: StyleManagement.testStyleBlackBold16),
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
                            Container(
                              height: 185.0,
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
                                      child: const Text("19\u2103", style: StyleManagement.testStyleWhite14),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/seat_lamp.png',
                                    width: 100.0,
                                    height: 80.0,
                                    fit: BoxFit.fill,
                                  ),
                                  const Text("Living Rooms", style: StyleManagement.testStyleBlackBold16),
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
                                        child: const Text("5", style: StyleManagement.testStyleBlack14),
                                      ),
                                      const Text("Devices", style: StyleManagement.testStyleBlack12),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              //height: 185.0,
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
                                      child: const Text("12\u2103", style: StyleManagement.testStyleWhite14),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/badroom.png',
                                    width: 100.0,
                                    height: 80.0,
                                    fit: BoxFit.fill,
                                  ),
                                  const Text("BadRooms", style: StyleManagement.testStyleBlackBold16),
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
                                        child: const Text("8", style: StyleManagement.testStyleBlack14),
                                      ),
                                      const Text("Devices", style: StyleManagement.testStyleBlack12),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Active", style: StyleManagement.testStyleBlackBold16),
                                Container(
                                  margin: const EdgeInsets.only(left: 5.0),
                                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
                                  decoration: BoxDecoration(
                                    color: CustomColor.appColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: const Text("8", style: StyleManagement.testStyleWhiteBold14),
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
                            Container(
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
                                        'assets/images/room_temp.png',
                                        width: 70.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text("Temperature", style: StyleManagement.testStyleWhite12),
                                          Text("19\u2103", style: StyleManagement.testStyleWhiteBold18),
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
                                        children: const [
                                          Text("AC", style: StyleManagement.testStyleWhiteBold18),
                                          Text("Living room", style: StyleManagement.testStyleWhite12),
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/images/off.png',
                                        width: 70.0,
                                        height: 30.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ],
                                  ),


                                ],
                              ),
                            ),
                            Container(
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
                                        'assets/images/three_lamp.png',
                                        width: 70.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text("Colour", style: StyleManagement.testStyleWhite12),
                                          Text("White", style: StyleManagement.testStyleWhiteBold18),
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
                                        children: const [
                                          Text("Lamp", style: StyleManagement.testStyleWhiteBold18),
                                          Text("Dining room", style: StyleManagement.testStyleWhite12),
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/images/off.png',
                                        width: 70.0,
                                        height: 30.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ],
                                  ),


                                ],
                              ),
                            ),
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
            Container(
              height: 50.0,
              width: 100.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/home_fill.png',
                    width: 25.0,
                    height: 25.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text("Home", style: StyleManagement.testStyleAppColorBold16)
                ],
              ),
            ),
            InkWell(
              child: Container(
                height: 50.0,
                width: 70.0,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Image.asset(
                  'assets/images/net.png',
                  width: 30.0,
                  height: 30.0,
                  fit: BoxFit.fill,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
            ),
            InkWell(
              child: Container(
                height: 50.0,
                width: 70.0,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Image.asset(
                  'assets/images/pei.png',
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
              },
            ),
            InkWell(
              child: Container(
                height: 50.0,
                width: 70.0,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Image.asset(
                  'assets/images/user.png',
                  width: 30.0,
                  height: 30.0,
                ),
              ),
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
