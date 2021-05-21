import 'package:flutter/material.dart';

class DeviceDetails extends StatefulWidget {
  final String name;
  DeviceDetails({required this.name});
  @override
  _DeviceDetailsState createState() => _DeviceDetailsState();
}

class _DeviceDetailsState extends State<DeviceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Container(
        child: Text("Device Body"),
      ),
    );
  }
}
