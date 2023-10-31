import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:unboxing/UnBoxing/first.dart';
import 'package:unboxing/UnBoxing/second.dart';
import 'fourth.dart';
import 'third.dart';

void main() => runApp(app123123());

class app123123 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyPage123(),
    );
  }
}

class MyPage123 extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage123> {
  int currentIndex =0;
  final screens = [
    //이게 하나하나의 화면이되고, Text등을 사용하거나, dart파일에 있는 class를 넣는다.
    first(),
    second(),
    third(),
    fourth(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 2,
        // 선택 되었을때
        selectedItemColor: Colors.green,
        selectedLabelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index) => setState(() =>currentIndex = index), //setState를 써야 바뀐다.
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'second',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.child_friendly),
              label: 'third',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: "fourth",
          )
        ],
      ),
    );
  }
}