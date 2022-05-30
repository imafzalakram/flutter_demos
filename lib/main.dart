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
  const ListViewDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 70,
          color: Colors.amber.shade300,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade400,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade600,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade500,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade900,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade400,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade800,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade600,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade800,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 50,
          color: Colors.amber.shade300,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade800,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Colors.amber.shade300,
          child: Center(
            child: Text(
              "April",
              style: TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
