import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
      ),
      body: Material(
        child: MyClass(),
      ),
    ),
  ));
}

class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Show Dialog"),
      onPressed: () {
        openAlertBox(context);
      },
    );
  }

  openAlertBox(BuildContext context) {
    // here we will write a code to display a AlertBox
    AlertDialog alertDialog = AlertDialog(
      title: Text(
        "Alert",
        style: TextStyle(color: Colors.white),
      ),
      content: Text(
        "Are you sure to submit this form?",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("No")),
        TextButton(onPressed: () {}, child: Text("Yes")),
      ],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}
