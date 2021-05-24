import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grain_manager/api/device_response.dart';
import 'package:grain_manager/components/app_drawer.dart';
import 'package:grain_manager/components/device_button.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Devices extends StatefulWidget {
  static const route = "/devices";
  Devices({Key? key}) : super(key: key);

  @override
  _DevicesState createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  Future<List<DevicesResponse>> devices = Future.value(<DevicesResponse>[]);
  bool isLoading = false;
  late Timer timer;

  var url = Uri.https("grain-manager.herokuapp.com", "/devices");

  List<DevicesResponse> deviceFromJson(String str) {
    final jsonData = json.decode(str);
    List<DevicesResponse> deviceList = [];
    for (var dev in jsonData) {
      deviceList.add(DevicesResponse.fromJson(dev));
    }
    setState(() {
      isLoading = false;
    });
    return deviceList;
  }

  Future<List<DevicesResponse>> getDevices() async {
    setState(() {
      isLoading = true;
    });
    var response;
    try {
      response = await http.get(url);
    } on SocketException {
      print("Internet problems");
    }
    return deviceFromJson(response.body);
  }

  setUpTimedFetch() {
    timer = Timer.periodic(Duration(milliseconds: 10000), (timer) {
      setState(() {
        devices = getDevices();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    devices = getDevices();
    setUpTimedFetch();
  }

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
            Row(
              children: [
                Text(
                  'Devices',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  width: 20,
                ),
                isLoading ? CircularProgressIndicator() : Container()
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: FutureBuilder(
                future: devices,
                builder: (context, snapshot) {
                  List<DevicesResponse> devices = (snapshot.data ??
                      <DevicesResponse>[]) as List<DevicesResponse>;

                  return ListView.builder(
                      itemBuilder: (context, count) {
                        return DeviceButton(
                          device: devices[count],
                        );
                      },
                      itemCount: devices.length);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            devices = getDevices();
          });
        },
        tooltip: 'Reload',
        child: Icon(Icons.replay_outlined),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }
}
