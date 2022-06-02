import 'package:flutter/material.dart';


void main() {
  runApp(DDMenu());
}


class DDMenu extends StatefulWidget {

  @override
  State<DDMenu> createState() => _DDMenuState();
}

class _DDMenuState extends State<DDMenu> {
  List<String> list = ["Pakistan", "India", "Bangladesh"];
  String? selectedCountry = "Pakistan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Drop Down Menus"),),
        body: Center(
          child: DropdownButton<String>(
              value: selectedCountry,
              items: list.map<DropdownMenuItem<String>>((v) {
                return DropdownMenuItem<String>(
                  child: Text(v),
                  value: v,
                );
              }).toList(),

              onChanged: ( newCountry){
                setState((){
                  selectedCountry=newCountry;
                });
              }
          ),
        ),
      ),
    );
  }
}
