import 'package:flutter/material.dart';
import 'package:grain_manager/components/app_drawer.dart';

class GuidePage extends StatelessWidget {
  static const route = "/guide";

  String guide =
      """The number of grain loss is increasing because of the improper storage of grains. The reason why the grains gets predated by the insects and mold is because the temperature and humidity conditions go out of bounds resulting in tons of grain loss every year.
You can find how to store your grain in order to keep it safe from insects and mold. We have provided the ideal conditions about grain storage management. Here are some of the general management tips.
Clean the containers: Always clean the bins before storing the newly harvested grains. The spoiled and spilled grains must be cleaned immediately to prevent rodent activity and cross contamination. Spraying the containers with fungicides and insecticides will help in protection from mold and insect spores from previously stored grains.
Cool and dry the grains: Decrease the level of moisture of the grains to the suitable level and cool the grains below 15 degrees celsius. This will help in prevention of insect and mold growth during storage.
Turn the grain at regular intervals: Turning the grain inside bins regulates the temperature inside and eliminates moisture and temperature gradients.
Clean the grain: Clean the dockages, broken seeds, and foreign material before loading the grains inside the containers. This will regulate the air inside the bins and prevent risk of mold and insect problems. Use grain spreaders to uniformly distribute the grains as this will help in preventing the risk of localised hot spot development.
Avoid mixing grain: If you mix grains that are freshly harvested with the grains already in the bin it has a potential to create moisture and temperature gradients which can spoil the grain.
Monitor continuously: You can easily identify the potential hazards on time and taking action by regularly monitoring the grains. We developed temperature and moisture sensors to monitor the storage.

Rice:
→ Moisture content should be less than 14%.
→ Grain should be avoided from wetness from surrounding.
→ Storage bags should be stacked higher than 4 meters from the floor.
→ The ideal rice storage temperature is 18-20 degree celsius.
→ The rice should be monitored once every 15 days for insect speculation.

Wheat:
→ It is best to store wheat at freezing temperature of about 5-10 degree celsius as it allows freezing parasites and doubles its lifetime.
→ Store wheat in waterproof and airtight containers as moisture and humidity are very bad for wheat.
→ The containers must also be dusted with parasites before storage.
→ Humidity should be set below 14%.
→ Moisture movement problems can are prevented or minimized by keeping grain mass temperatures equalized and within 10 to 15o F of the average outside air temperature.

Barley:
→ Barley should be stored 4 to 5 meters above ground.
→ Moisture content should be less than 14%.
→ Temperature should atleast be less than 20 degrees to protect the grain.
→ Barley should be disinfected before the storage with aerosols.
""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guide"),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: SingleChildScrollView(
              child: Text(guide,
                  style: TextStyle(
                    fontSize: 16,
                  )))),
    );
  }
}
