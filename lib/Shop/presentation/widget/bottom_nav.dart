import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_apple_store/Shop/presentation/pages/iPhones.dart';
import 'package:flutter_apple_store/Shop/presentation/pages/macbooks_page.dart';
import 'package:flutter_apple_store/Shop/presentation/pages/watches_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  bool isSelectedWatch = true;
  bool isSelectedIphone = false;
  bool isSelectedMacbook = false;
  List<Widget> myPages = [
    const MacbookPage(),
    const WatchPage(),
    const IphonePage()
  ];
  int selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width * 25 / 100,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelectedWatch = true;
                        isSelectedIphone = false;
                        isSelectedMacbook = false;
                        selectedIndex = 1;
                      });
                    },
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: Column(
                        children: [
                          Text(
                            "Watches",
                            style: TextStyle(
                                color: isSelectedWatch
                                    ? Colors.white
                                    : Colors.grey,
                                fontFamily: "iran_sens",
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          AnimatedContainer(
                            duration: const Duration(microseconds: 5000),
                            height: 3,
                            width: 50,
                            color:
                                isSelectedWatch ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelectedWatch = false;
                        isSelectedIphone = false;
                        isSelectedMacbook = true;
                        selectedIndex = 0;
                      });
                    },
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: Column(
                        children: [
                          Text(
                            "MacBooks",
                            style: TextStyle(
                                color: isSelectedMacbook
                                    ? Colors.white
                                    : Colors.grey,
                                fontFamily: "iran_sens",
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          AnimatedContainer(
                            duration: const Duration(microseconds: 5000),
                            height: 3,
                            width: 50,
                            color:
                                isSelectedMacbook ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelectedWatch = false;
                        isSelectedIphone = true;
                        isSelectedMacbook = false;
                        selectedIndex = 2;
                      });
                    },
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: Column(
                        children: [
                          Text(
                            "iPhones",
                            style: TextStyle(
                                color: isSelectedIphone
                                    ? Colors.white
                                    : Colors.grey,
                                fontFamily: "iran_sens",
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          AnimatedContainer(
                            duration: const Duration(microseconds: 5000),
                            height: 3,
                            width: 50,
                            color:
                                isSelectedIphone ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width * 75 / 100,
                child: myPages[selectedIndex],
              )
            ],
          )
        ],
      ),
    );
  }
}
