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
          child: Column(
            children: [
              Text("First Child"),
              Text("Second Child"),
              Text("Third Child")
            ],
          ),
        )
      ),
    ),
  );
}