import 'package:flutter/material.dart';


// Button types
// 1. TextButton
// 2. Outlined Button
// 3. Elevated Button

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lecture#33"),
        ),
        body: Material(
          child: Center(
            child: ElevatedButton.icon(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              label: Text("Login"),
              onPressed: () {},
              icon: Icon(Icons.login),
            ),
          ),
        ),
      ),
    ),
  );
}

