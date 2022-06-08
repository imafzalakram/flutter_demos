import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  var url = Uri.parse('https://yashigarments.com/mobile_api.php');
  var response = await http.get(url);
  Map<String, dynamic> res = jsonDecode(response.body);

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Http Request Example"),
        ),
        body: ListTile(
          title: Text(res['name'],style: TextStyle(color: Colors.black,fontSize: 20),),
          subtitle: Text("Roll no is ${res['roll_no'].toString()}"),
        ),
      ),
    ),
  );
}
