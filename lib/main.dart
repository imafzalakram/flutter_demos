import 'package:flutter/material.dart';

// Topic: How can we move from one screen to another
void main() {
  runApp(TabBarDesign());
}

class TabBarDesign extends StatelessWidget {
  const TabBarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Designing"),
            bottom: TabBar(
              indicatorColor: Colors.amber,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text("Train"),
                  icon: Icon(Icons.train),
                ),
                Tab(
                  child: Text("Car"),
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  child: Text("Bike"),
                  icon: Icon(Icons.bike_scooter),
                ),
                Tab(
                  child: Text("Bus"),
                  icon: Icon(Icons.bus_alert),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
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
                                TextButton(
                                    onPressed: () {}, child: Text("Add")),
                                TextButton(
                                    onPressed: () {}, child: Text("Cancel")),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              Container(
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
              Center(child: Text("Fourth Tab")),
              Center(child: Text("Fourth Tab")),
            ],
          ),
        ),
      ),
    );
  }
}
