import 'package:flutter/material.dart';

class SecondUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact Us"),
        ),
        body: Material(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter Name",
                        labelStyle: TextStyle(fontSize: 20.0),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        filled: false,
                        fillColor: Colors.black12),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter Email Address",
                        labelStyle: TextStyle(fontSize: 20.0),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        filled: false,
                        fillColor: Colors.black12),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        hintText: "Enter Phone Number",
                        labelStyle: TextStyle(fontSize: 20.0),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                        filled: false,
                        fillColor: Colors.black12),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Address",
                        hintText: "Enter Address",
                        labelStyle: TextStyle(fontSize: 20.0),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_city),
                        filled: false,
                        fillColor: Colors.black12),
                    keyboardType: TextInputType.streetAddress,
                    maxLines: 2,
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
