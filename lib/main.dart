import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Design"),
        ),
        body: ListViewDesign(),
      ),
    ),
  );
}

class ListViewDesign extends StatelessWidget {
  List<String> months = ["April", "May", "June", "July", 'Aug','Sep','Oct','Nov','Dec','Jan', 'Feb','March', 'April'];
  List<int> colorsList = [300,200,100,500,900,600,400,700,600,600,800,200,600];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: months.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 70,
          color: Colors.amber[colorsList[index]],
          child: Center(
            child: Text(
              "${months[index]}",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}