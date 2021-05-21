import 'package:flutter/material.dart';
import 'package:grain_manager/components/app_drawer.dart';

class AboutPage extends StatelessWidget {
  static const route = "/about";
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
          child: Text("About")),
    );
  }
}
