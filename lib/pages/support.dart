import 'package:flutter/material.dart';
import 'package:grain_manager/components/app_drawer.dart';

class SupportPage extends StatelessWidget {
  static const route = "/support";
  String support =
      "For any queries please contact the development team on the github page or send an email to grainmanagersupport@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Support"),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Text(
            support,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
