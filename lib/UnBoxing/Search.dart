import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Screen A Page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}