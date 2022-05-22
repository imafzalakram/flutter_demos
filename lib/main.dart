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
        body: Material(
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              "Hello World!",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
