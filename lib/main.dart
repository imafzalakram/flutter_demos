import 'package:flutter/material.dart';
import 'package:hello_world/second.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Drawer Header",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                ),),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
            ),
            ListTile(
              title: Text("Contact Us"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SecondUI();
                }));
              },
            ),
            ListTile(
              title: Text("Privacy Policy"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Return Poliy"),
              onTap: (){
                Navigator.pop(context);

              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("My App")),
    );
  }
}
