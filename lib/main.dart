import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text(
          "Hello World!",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 40.0,
          ),
        ),
      ),
    ),
  );
}