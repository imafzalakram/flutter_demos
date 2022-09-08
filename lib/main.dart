import 'package:flutter/material.dart';

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
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              textInputAction: TextInputAction.send,
              textAlign: TextAlign.left,
              cursorColor: Colors.blue,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
              keyboardType: TextInputType.text,
              maxLength: 4,
              decoration: InputDecoration(
                hintText: "enter text",
                hintStyle: TextStyle(color: Colors.blue),
                labelText: "Text",
                border: OutlineInputBorder(),
                icon: Icon(Icons.text_fields),
                prefixIcon: Icon(Icons.article),
                suffixIcon: Icon(Icons.text_snippet_outlined),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
