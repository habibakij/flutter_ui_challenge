
import 'package:flutter/material.dart';
import 'package:ui_test/screen/screen_three.dart';
import '../utils/color_management.dart';
import '../utils/style_management.dart';
import 'home_screen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {

  String dropdownvalue = 'Living Room';
  var items = [
    'Living Room',
    'Drawing Room',
  ];

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
                              "Smart Home",
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

                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 10.0),
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          decoration: BoxDecoration(
                            color: CustomColor.dropdownColor,
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(color: Colors.black)
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownvalue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      color: CustomColor.displayBackColor,
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(50.0)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Smart Mode", style: StyleManagement.testStyleAppColorBold16),
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
                          const SizedBox(height: 5.0,),
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
                                        const Text("Air Condition", style: StyleManagement.testStyleBlackBold14),
                                        const SizedBox(height: 5.0,),
                                        Row(
                                          children: [
                                            const Text(
                                              "Bedroom",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                            Container(
                                              height: 10.0,
                                              width: 1.0,
                                              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                              color: Colors.black,
                                            ),
                                            const Text(
                                              "sun",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5.0,),
                                    Image.asset(
                                      'assets/images/off.png',
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
                                            'assets/images/ac.png',
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
                                                "10 PM",
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
                                                "11 AM",
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
                          const SizedBox(height: 5.0,),
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
                                              "Badroom 2",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                            Container(
                                              height: 10.0,
                                              width: 1.0,
                                              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                              color: Colors.black,
                                            ),
                                            const Text(
                                              "Fri",
                                              style: StyleManagement.testStyleBlack12,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5.0,),
                                    Image.asset(
                                      'assets/images/off.png',
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
                          const SizedBox(height: 5.0,),
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
                                        const Text("Television", style: StyleManagement.testStyleBlackBold14),
                                        const SizedBox(height: 5.0,),
                                        Row(
                                          children: [
                                            const Text(
                                              "Living Room",
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
                                            'assets/images/tv.png',
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
                          const SizedBox(height: 10.0,),
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
                    'assets/images/net_fill.png',
                    width: 25.0,
                    height: 25.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text("Smart", style: StyleManagement.testStyleAppColorBold16)
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
                  'assets/images/pei.png',
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
              },
            ),
            Container(
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
          ],
        ),
      ),

    );
  }
}
