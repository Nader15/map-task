// To parse this JSON data, do
//
//     final citiesModel = citiesModelFromJson(jsonString);

import 'dart:convert';

List<CitiesModel> citiesModelFromJson(String str) => List<CitiesModel>.from(
    json.decode(str).map((x) => CitiesModel.fromJson(x)));

String citiesModelToJson(List<CitiesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CitiesModel {
  CitiesModel({
     this.country,
    required this.name,
    required this.lat,
    required this.lng,
  });

  String? country;
  String name;
  String lat;
  String lng;

  factory CitiesModel.fromJson(Map<String, dynamic> json) => CitiesModel(
        country: json["country"],
        name: json["name"],
        lat: json["lat"],
        lng: json["lng"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "name": name,
        "lat": lat,
        "lng": lng,
      };
}
