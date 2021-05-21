import 'package:flutter/material.dart';
import 'package:grain_manager/components/app_drawer.dart';
import 'package:grain_manager/components/device_button.dart';

class Devices extends StatefulWidget {
  static const route = "/";
  Devices({Key? key}) : super(key: key);

  @override
  _DevicesState createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose A Device"),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Devices',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                children: [
                  DeviceButton(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Device',
        child: Icon(Icons.add),
      ),
    );
  }
}
