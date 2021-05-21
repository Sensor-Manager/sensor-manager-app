import 'package:flutter/material.dart';
import 'package:grain_manager/pages/device_details.dart';

class DeviceButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DeviceDetails(name: "hello")));
      },
      child: Text("hello"),
    );
  }
}
