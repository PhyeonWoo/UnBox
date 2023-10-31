import 'package:flutter/material.dart';
import 'package:unboxing/UnBoxing/Container.dart';
import 'package:unboxing/UnBoxing/action_Button.dart';
import 'package:unboxing/UnBoxing/leading_Button.dart';


class first extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<first> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("UnBoxing"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),

          // 좌측 버튼
          leading: leading_Button(),

          // 우측 버튼
          actions: <Widget>[
            action_Button(),
          ],
        ),
        body: HomeContainer1(),   //second third 다름
    );
  }
}
