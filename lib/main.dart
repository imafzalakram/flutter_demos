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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            child: Column(
              children: [
                ListTile(
                  title: Text("Muhammad Ali"),
                  subtitle: Text("Senior Mobile App Developer"),
                  leading: Icon(Icons.person_add),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {},
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {}, child: Text("Add")),
                      TextButton(onPressed: () {}, child: Text("Cancel")),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}