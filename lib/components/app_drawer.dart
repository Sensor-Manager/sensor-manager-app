import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
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
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.devices),
          title: Text("Devices"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.book),
          title: Text("Guide"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.support),
          title: Text("Support"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
      ],
    );
  }
}
