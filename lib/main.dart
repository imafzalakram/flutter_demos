import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "App Bar",
          ),
        ),
        body: Container(
          color: Colors.lightBlueAccent,
          margin: EdgeInsets.all(30.0),    // it will give space to Container widget from outside
          padding: EdgeInsets.all(25.0),   // it will give space to Container widget from inside which will push Text to move accordingly
          child: Text(
            "Hello World!",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              backgroundColor: Colors.black,
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    ),
  );
}