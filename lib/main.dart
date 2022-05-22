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
        body: ElevatedButton(
          onPressed: () {
            print("Pressed");
          },
          child: Text("Elevated Button"),
        ),
      ),
    ),
  );
}