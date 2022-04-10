import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:map_task/Models/cities_model.dart';
import 'package:map_task/Utils/app_strings.dart';

class CitiesServices {
  static Future<List<CitiesModel>?> getCities() async {
    var response = await http.get(
      Uri.parse(AppStrings.API_URL),
    );
    if (response.statusCode == 200) {
      var jsonData = response.body;
      return citiesModelFromJson(jsonData);
      // List<dynamic> dataContent = json.decode(response.body);
      // print('$dataContent');
      // dataContent.map(
      //   (city) {
      //     print('Inserting $city');
      //     DBProvider.db.createCities(CitiesModel.fromJson(city));
      //   },
      // ).toList();
    } else {
      return throw Exception("Failed to load Cities");
    }
    return [];
  }
}
