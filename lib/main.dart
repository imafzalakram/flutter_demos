import 'package:flutter/material.dart';

void main() {
  runApp(StudentItro());
}

class StudentItro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StudentIntroStates();
  }
}

class StudentIntroStates extends State<StudentItro> {
  String studentIntro="Empty";

  @override
  Widget build(BuildContext context) {
    debugPrint("calling build function");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Handeling Statefull Widget"),),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Student Intro",
                  hintText: "Enter text",
                ),
                onSubmitted: (String intro){
                  // The most improtant function in all statefull widgets
                  setState((){
                    debugPrint("calling setState function");
                    studentIntro=intro;
                  });
                },
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text("Student Intro: $studentIntro",
                style: TextStyle(fontSize: 25.0),),
              )
            ],
          ),
        ),
      ),
    );
  }
}