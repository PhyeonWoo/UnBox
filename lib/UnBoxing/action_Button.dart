import 'package:flutter/material.dart';

void main() => runApp(action_Button());

class action_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      icon: Icon(Icons.grade),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> ThirdPage()),
        );
      },
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두 번째 페이지'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('두 번째 페이지'),
            // 이 페이지에서 필요한 다른 위젯들을 추가할 수 있습니다.
          ],
        ),
      ),
    );
  }
}