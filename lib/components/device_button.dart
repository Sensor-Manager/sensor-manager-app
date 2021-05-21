import 'package:flutter/material.dart';
import 'package:grain_manager/models/device_data.dart';
import 'package:grain_manager/pages/device_details.dart';

class DeviceButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DeviceDetails.route,
            arguments: DeviceData(title: "hello"));
      },
      child: Card(
        child: Container(
          padding: EdgeInsetsDirectional.all(20),
          child: Text("hello"),
        ),
      ),
    );
  }
}
