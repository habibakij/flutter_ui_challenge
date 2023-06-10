
import 'package:flutter/material.dart';
import 'package:ui_test/screen/home_screen.dart';
import '../utils/color_management.dart';
import '../utils/style_management.dart';

class ScreenFour extends StatelessWidget {

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
                    color: CustomColor.displayBackColor,
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
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      color: CustomColor.appColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                    ),
                    child: Stack(
                      children: [

                        Positioned(
                          top: 0.0,
                          right: 40.0,
                          child: Image.asset(
                            'assets/images/top_lamp.png',
                            width: 100.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                          ),
                        ),

                        Positioned(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    child: SizedBox(
                                      width: (MediaQuery.of(context).size.width / 2) - 30,
                                      child: const Row(
                                        children: [
                                          Icon(Icons.arrow_back_ios, size: 15, color: Colors.white,),
                                          Text(
                                            "Back",
                                            style: StyleManagement.testStyleWhite12,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                    },
                                  ),
                                  const Text(
                                    "Lamp",
                                    style: StyleManagement.testStyleWhiteBold18,
                                  ),
                                ],
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Dining room", style: StyleManagement.testStyleWhite14),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  'assets/images/off.png',
                                  width: 55.0,
                                  height: 25.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                alignment: Alignment.centerLeft,
                                child: const Text("80%", style: StyleManagement.testStyleWhiteBold40),
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Brightness", style: StyleManagement.testStyleWhite14),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                alignment: Alignment.centerLeft,
                                child: const Text("Insensity", style: StyleManagement.testStyleWhiteBold14),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                        'assets/images/lamp_off.png',
                                        height: 40.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(width: 5.0),
                                    Expanded(
                                      flex: 8,
                                      child: Image.asset(
                                        'assets/images/line.png',
                                        height: 40.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(width: 5.0),
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                        'assets/images/lamp2.png',
                                        height: 40.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Divider(color: Colors.white, height: 0.5),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                alignment: Alignment.centerLeft,
                                child: const Text("Usages", style: StyleManagement.testStyleWhiteBold14),
                              ),
                              const SizedBox(height: 10.0),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Use Today", style: StyleManagement.testStyleWhite14),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("50", style: StyleManagement.testStyleWhiteBold14),
                                      Text(" watt", style: StyleManagement.testStyleWhite12),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Use Week", style: StyleManagement.testStyleWhite14),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("500", style: StyleManagement.testStyleWhiteBold14),
                                      Text(" watt", style: StyleManagement.testStyleWhite12),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Use Month", style: StyleManagement.testStyleWhite14),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("5000", style: StyleManagement.testStyleWhiteBold14),
                                      Text(" watt", style: StyleManagement.testStyleWhite12),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        /*Builder(builder: (BuildContext context){
                          return
                        })*/
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      color: CustomColor.displayBackColor,
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(50.0)),
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
                                  const Text("Schedule", style: StyleManagement.testStyleBlackBold16),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5.0),
                                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      color: CustomColor.appColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                    ),
                                    child: const Text("3", style: StyleManagement.testStyleWhiteBold14),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5.0),
                                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                ),
                                child: const Icon(Icons.add, size: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Smart Lamp", style: StyleManagement.testStyleBlackBold14),
                                        const SizedBox(height: 5.0,),
                                        Row(
                                          children: [
                                            const Text(
                                              "Dining Rooms",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                            Container(
                                              height: 10.0,
                                              width: 1.0,
                                              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                              color: Colors.black,
                                            ),
                                            const Text(
                                              "Tue Thu",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5.0,),
                                    Image.asset(
                                      'assets/images/on.png',
                                      width: 55.0,
                                      height: 25.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/lamp2.png',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(width: 15.0,),
                                          Column(
                                            children: const [
                                              Text(
                                                "from",
                                                style: StyleManagement.testStyleBlack12,
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                "8 PM",
                                                style: StyleManagement.testStyleBlackBold12,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      width: 1.0,
                                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            children: const [
                                              Text(
                                                "to",
                                                style: StyleManagement.testStyleBlack12,
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                "8 AM",
                                                style: StyleManagement.testStyleBlackBold12,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 5.0,),
                                    Container(
                                      height: 40.0,
                                      width: 1.0,
                                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            ),
                                            child: Image.asset(
                                              'assets/images/delete.png',
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                            ),
                                            child: Image.asset(
                                              'assets/images/edit.png',
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Smart Lamp", style: StyleManagement.testStyleBlackBold14),
                                        const SizedBox(height: 5.0,),
                                        Row(
                                          children: [
                                            const Text(
                                              "Dining Rooms",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                            Container(
                                              height: 10.0,
                                              width: 1.0,
                                              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                              color: Colors.black,
                                            ),
                                            const Text(
                                              "Tue Thu",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5.0,),
                                    Image.asset(
                                      'assets/images/on.png',
                                      width: 55.0,
                                      height: 25.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/lamp2.png',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(width: 15.0,),
                                          Column(
                                            children: const [
                                              Text(
                                                "from",
                                                style: StyleManagement.testStyleBlack12,
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                "8 PM",
                                                style: StyleManagement.testStyleBlackBold12,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      width: 1.0,
                                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            children: const [
                                              Text(
                                                "to",
                                                style: StyleManagement.testStyleBlack12,
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                "8 AM",
                                                style: StyleManagement.testStyleBlackBold12,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 5.0,),
                                    Container(
                                      height: 40.0,
                                      width: 1.0,
                                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            ),
                                            child: Image.asset(
                                              'assets/images/delete.png',
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                            ),
                                            child: Image.asset(
                                              'assets/images/edit.png',
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Smart Lamp", style: StyleManagement.testStyleBlackBold14),
                                        const SizedBox(height: 5.0,),
                                        Row(
                                          children: [
                                            const Text(
                                              "Dining Rooms",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                            Container(
                                              height: 10.0,
                                              width: 1.0,
                                              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                              color: Colors.black,
                                            ),
                                            const Text(
                                              "Tue Thu",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5.0,),
                                    Image.asset(
                                      'assets/images/on.png',
                                      width: 55.0,
                                      height: 25.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/lamp2.png',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(width: 15.0,),
                                          Column(
                                            children: const [
                                              Text(
                                                "from",
                                                style: StyleManagement.testStyleBlack12,
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                "8 PM",
                                                style: StyleManagement.testStyleBlackBold12,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      width: 1.0,
                                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            children: const [
                                              Text(
                                                "to",
                                                style: StyleManagement.testStyleBlack12,
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                "8 AM",
                                                style: StyleManagement.testStyleBlackBold12,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 5.0,),
                                    Container(
                                      height: 40.0,
                                      width: 1.0,
                                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            ),
                                            child: Image.asset(
                                              'assets/images/delete.png',
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                            ),
                                            child: Image.asset(
                                              'assets/images/edit.png',
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
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
    );
  }
}
