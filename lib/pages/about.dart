import 'package:flutter/material.dart';
import 'package:grain_manager/components/app_drawer.dart';

class AboutPage extends StatelessWidget {
  static const route = "/about";
  String about =
      """Rotting of grains is becoming a very stressful matter as every year tons of grains rot due to improper storage in warehouses. The grains are affected by mold growth, environmental changes, insects and other factors. And as we know agriculture is a big inevitable part of Indian economy this app has a solution for that.

The Platform will allow the users to control and maintain the threshold temperature and humidity inside the storage houses. You can monitor the conditions inside the warehouse using the app.
You have to connect the hardware device to your warehouse and connect to the app. You will be notified in case the temperature or humidity changes.
""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Text(
            about,
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
