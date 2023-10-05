import 'package:flutter/material.dart';
import "package:unboxing/UnBoxing/Container.dart";



void main() => runApp(app());

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        // bottomNavigationBar: MyHomePage(),
        body: MyApp(),
        appBar: AppBar(

          // 상단바
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("UnBoxing"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),

          // 좌측 위젯버튼
          leading: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),

          // 우측 위젯버튼
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.grade),
              onPressed: (){},
            ),
          ],


        ),
      ),
    );
  }
}