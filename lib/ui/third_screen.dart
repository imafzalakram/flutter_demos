import 'package:flutter/material.dart';

class ThirdScreenUI extends StatelessWidget {
  const ThirdScreenUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: ElevatedButton(
          child: Text("Go to third screen"),
          onPressed: () {},
        ),
      ),
    );;
  }
}
