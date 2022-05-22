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
                Row(
                  children: [
                    Expanded(
                      child:
                      Container(
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("April"),
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Container(
                        color: Colors.yellow,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("May"),
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Container(
                        color: Colors.lightGreenAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("June"),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child:
                      Container(
                        color: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("July"),
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Container(
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Aug"),
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Container(
                        color: Colors.lightGreen,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Sep"),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child:
                      Container(
                        color: Colors.greenAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Oct"),
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Container(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Nov"),
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Container(
                        color: Colors.brown,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Dec"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    ),
  );
}
