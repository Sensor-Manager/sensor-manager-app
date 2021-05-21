import 'package:flutter/material.dart';

class DeviceDetails extends StatefulWidget {
  final String name;
  DeviceDetails({required this.name});
  @override
  _DeviceDetailsState createState() => _DeviceDetailsState();
}

class _DeviceDetailsState extends State<DeviceDetails> {
  String temperature = "30℃";
  String humidity = "84%";

  String review =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    Text(
                      "Temperature : $temperature",
                      style: TextStyle(fontSize: 23.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Humidity : $humidity",
                      style: TextStyle(fontSize: 23.0),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Container(
                  padding: EdgeInsetsDirectional.all(20.0),
                  child: Text(
                    review,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
