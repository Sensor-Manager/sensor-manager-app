import 'package:flutter/material.dart';
import 'package:grain_manager/api/device_response.dart';

class DeviceDetails extends StatelessWidget {
  static const route = "/deviceDetails";

  String getReview(DevicesResponse arg) {
    // print(int.parse(arg.temperature.substring(0, arg.temperature.length - 2)));
    double temp = double.parse(arg.temperature);

    double humi = double.parse(arg.humidity);
    if (arg.name == "Rice") {
      if (temp < 21 || temp > 42 || humi < 50 || humi > 80) {
        return """→ Is the place where rice is stored a humid or moist place?
→ Is the level of moisture not dried upto 14%?.
→ Were the grains stored directly on the floor?
→ Was it stored in a close and compact manner?
→ Were the containers reused without cleaning or treatment for hiding insects or pathogens?
→ Was it stored in airtight containers?
""";
      }
    } else if (arg.name == "Wheat") {
      if (temp < 3 || temp > 32 || humi < 18 || humi > 20) {
        return """→ Are all the structures airtight including the loading and unloading ports?
→ Is the warehouse not plastered with an impervious clay layer to protect attack from termite and other rodents?
→ Was rodent proof material not used while construction of the warehouses?
→ Is the ground where the wheat was stored elevated and away from moisture?
→ Is more grain stored than the allowed amount?
""";
      }
    } else if (arg.name == "Barley") {
      if (temp < 18 || temp > 24 || humi < 70 || humi > 80) {
        return """→ Is the moisture content greater than 12% as this could result in acetic type fermentation?
→ Is the temperature of the warehouse more than 30%?
→ Is the construction not well-ventilated and lacks a proper drainage system in case of rains?
→ Is Barley stored over height of 4-5 meters?
→ Was the store house vacuum cleaned before storing?
""";
      }
    }
    return "Every thing is good and the grains are safe";
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DevicesResponse;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
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
                      "Temperature : ${args.temperature} °C",
                      style: TextStyle(fontSize: 23.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Humidity : ${args.humidity} %",
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
                    getReview(args),
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
