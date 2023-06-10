import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_test/screen/home_screen.dart';
import 'package:ui_test/screen/screen_four.dart';
import 'package:ui_test/screen/screen_two.dart';

import '../utils/color_management.dart';
import '../utils/style_management.dart';
import 'chart/chart_container.dart';
import 'chart/line_chart_container.dart';


class ScreenThree extends StatelessWidget {

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
                    padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      color: CustomColor.appColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Power Usage",
                              style: StyleManagement.testStyleWhiteBold18,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10.0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Image.asset(
                                'assets/images/filter.png',
                                width: 20.0,
                                height: 20.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Usage this week",
                              style: StyleManagement.testStyleWhite16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "2500",
                                  style: StyleManagement.testStyleWhiteBold18,
                                ),
                                Text(
                                  "watt",
                                  style: StyleManagement.testStyleWhite12,
                                ),
                              ],
                            ),

                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            children: <Widget>[
                              ChartContainer(
                                title: '',
                                color: Colors.transparent,
                                chart: LineChartContent(),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Total Today", style: StyleManagement.testStyleBlackBold16),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5.0),
                                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      color: CustomColor.appColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                    ),
                                    child: const Text("4", style: StyleManagement.testStyleWhiteBold14),
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

                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/lamp2.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Lamp", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              Text("1000", style: StyleManagement.testStyleAppColorBold14),
                                              Text(" kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Kitchen - Bedroom", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/down.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.red[300],
                                              ),
                                              const Text("  -11.2%", style: StyleManagement.testStyleRed12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Text("8 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          const Text("12 Jam", style: StyleManagement.testStyleBlack12),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/ac.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Air Condition", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              Text("1000", style: StyleManagement.testStyleAppColorBold14),
                                              Text(" kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Kitchen - Living room", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/up.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.green[300],
                                              ),
                                              const Text("  -10.2%", style: StyleManagement.testStyleGreen12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Text("8 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          const Text("12 Jam", style: StyleManagement.testStyleBlack12),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/speaker.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Wireless Speaker", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              Text("1090", style: StyleManagement.testStyleAppColorBold14),
                                              Text(" kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Bedroom", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/down.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.green[300],
                                              ),
                                              const Text("  -10.2%", style: StyleManagement.testStyleGreen12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Text("2 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          const Text("3 Jam", style: StyleManagement.testStyleBlack12),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: BoxDecoration(
                              color: CustomColor.usageCardShadowColor,
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Image.asset(
                                    'assets/images/tv.png',
                                    height: 40.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 250.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Television", style: StyleManagement.testStyleBlackBold14),
                                          Row(
                                            children: [
                                              Text("1000", style: StyleManagement.testStyleAppColorBold14),
                                              Text(" kw/h", style: StyleManagement.testStyleAppColor12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Living Room", style: StyleManagement.testStyleBlack14),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/down.png',
                                                height: 20.0,
                                                fit: BoxFit.fill,
                                                color: Colors.red[300],
                                              ),
                                              const Text("  -100.2%", style: StyleManagement.testStyleRed12),
                                            ],
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Text("1 unit", style: StyleManagement.testStyleBlack12),
                                          Container(
                                            height: 15.0,
                                            width: 1.0,
                                            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                            color: Colors.grey,
                                          ),
                                          const Text("12 Jam", style: StyleManagement.testStyleBlack12),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                  'assets/images/home.png',
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
                    'assets/images/pei_fill.png',
                    width: 25.0,
                    height: 25.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text("Usage", style: StyleManagement.testStyleAppColorBold16)
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
