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
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.green,
                  child: Text("First Child"),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.blue,
                  child: Text("First Child"),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.brown,
                  child: Text("First Child"),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
