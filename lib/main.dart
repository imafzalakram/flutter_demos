import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(SharedPref());
}

class SharedPref extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shared Pref"),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  saveString();
                  saveInt();
                  saveDouble();
                  saveBoolean();
                },
                child: Text("Save Data"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  getStringData();
                  getIntData();
                  getDoubleData();
                  getBooleanData();
                },
                child: Text("Print Data"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  saveString() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("user_name", "Muhammad Ali");
  }

  saveInt() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt("user_roll_no", 45);
  }

  saveDouble() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setDouble("user_gpa", 3.38);
  }

  saveBoolean() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("is_muslim", true);
  }


  getStringData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? userName = sharedPreferences.getString("user_name");
    debugPrint("Username: $userName");
  }

  getIntData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? userRollNo = sharedPreferences.getInt("user_roll_no");
    debugPrint("Username: $userRollNo");
  }

  getDoubleData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    double? gpa = sharedPreferences.getDouble("user_gpa");
    debugPrint("Username: $gpa");
  }

  getBooleanData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   bool? isMuslim = sharedPreferences.getBool("is_muslim");
    debugPrint("Username: $isMuslim");
  }

}
