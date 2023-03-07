import 'package:flutter/material.dart';

void main() {
  runApp(
    MyStatelessWidget(),
  );
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
        ),
        body: Material(
          child: Container(
            width: 400,
            height: 400,
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 30),
            ),

            margin: EdgeInsets.only(left: 50, top: 50),
            padding: EdgeInsets.all(30),

            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.2, 0.5, 0.8, 0.9],
                colors: [
                  Colors.brown,
                  Colors.white,
                  Colors.green,
                  Colors.yellow
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(50, 50),
                bottomLeft: Radius.elliptical(50, 50),
                topRight: Radius.elliptical(50, 50),
                topLeft: Radius.elliptical(50, 50),
              ),
              border: Border.all(width: 10, color: Colors.pink),
            ),
          ),
        ),
      ),
    );
  }
}