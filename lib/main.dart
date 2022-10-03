import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  String? name;
  int? rollNo;
  double? GPA;
  List list;

  var url = Uri.parse('https://zonellcollections.shop/app_backend/app_api.php');
  // API Response ["Ali Khan",123,2.5]

  var response = await http.get(url);
  if (response.statusCode == 200) {
    if (!response.body.isEmpty) {
      list = jsonDecode(response.body);
      name = list[0];
      rollNo = list[1];
      GPA = list[2];
    } else {
      print("Response does not exist!");
    }
  } else {
    print("network call failed!");
  }

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Integration"),
        ),
        body: Material(
          child: Center(
              child: ListTile(
            title: Text(name!),
            subtitle: Text(
              rollNo.toString()!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(GPA.toString()!),
          )),
        ),
      ),
    ),
  );
}
