class DevicesResponse {
  String humidity = "";
  int id = -1;
  String name = "";
  String temperature = "";

  DevicesResponse(
      {required this.humidity,
      required this.id,
      required this.name,
      required this.temperature});

  DevicesResponse.fromJson(Map<String, dynamic> json) {
    humidity = json['humidity'];
    id = json['id'];
    name = json['name'];
    temperature = json['temperature'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['humidity'] = this.humidity;
    data['id'] = this.id;
    data['name'] = this.name;
    data['temperature'] = this.temperature;
    return data;
  }
}
