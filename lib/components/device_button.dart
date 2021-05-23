import 'package:flutter/material.dart';
import 'package:grain_manager/api/device_response.dart';

import 'package:grain_manager/pages/device_details.dart';

class DeviceButton extends StatelessWidget {
  final DevicesResponse device;
  DeviceButton({required this.device});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DeviceDetails.route, arguments: device);
      },
      child: Card(
        child: Container(
          padding: EdgeInsetsDirectional.all(20),
          child: Text(device.name),
        ),
      ),
    );
  }
}
