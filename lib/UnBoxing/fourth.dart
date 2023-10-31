import 'package:flutter/material.dart';
import 'package:unboxing/UnBoxing/Sports_category/Coach_Container.dart';

import 'action_Button.dart';
import 'leading_Button.dart'; //flutter의 package를 가져오는 코드 반드시 필요


class fourth extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<fourth> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('TEST')
          ],
        ),
      ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("UnBoxing"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),

          leading: leading_Button(),

          // 우측 버튼
          actions: <Widget>[
            action_Button(),
          ],
        )
    );
  }
}