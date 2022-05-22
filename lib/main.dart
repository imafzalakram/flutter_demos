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
      body: Center(
        child: Text(
          "Hello World!",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 40.0,
          ),
        ),
      ),
    )),
  );
}