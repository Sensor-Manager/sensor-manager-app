import 'package:flutter/material.dart';
import 'package:grain_manager/pages/about.dart';
import 'package:grain_manager/pages/devices.dart';
import 'package:grain_manager/pages/guide.dart';
import 'package:grain_manager/pages/support.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;
    return ListView(
      children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to,",
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Grain Manager",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.devices),
          title: Text("Devices"),
          onTap: () {
            // Navigator.pop(context);
            if (currentRoute != Devices.route) {
              Navigator.pushReplacementNamed(context, Devices.route);
            } else {
              Navigator.pop(context);
            }
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.book),
          title: Text("Guide"),
          onTap: () {
            if (currentRoute != GuidePage.route) {
              Navigator.pushReplacementNamed(context, GuidePage.route);
            } else {
              Navigator.pop(context);
            }
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.support),
          title: Text("Support"),
          onTap: () {
            // ModalRoute.of(context)!.settings.name;
            if (currentRoute != SupportPage.route) {
              Navigator.pushReplacementNamed(context, SupportPage.route);
            } else {
              Navigator.pop(context);
            }
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
          onTap: () {
            if (currentRoute != AboutPage.route) {
              Navigator.pushReplacementNamed(context, AboutPage.route);
            } else {
              Navigator.pop(context);
            }
          },
        ),
        Divider(),
      ],
    );
  }
}
