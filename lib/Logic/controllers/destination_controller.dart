import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Models/cities_model.dart';
import '../../Services/cities_services.dart';

class DestinationController extends GetxController {
  var isLoading = true.obs;
  var citiesList = <CitiesModel>[].obs;
  var citiesSearchResult = <CitiesModel>[].obs;
  var searchTextController = TextEditingController().obs;

  @override
  void onInit() async {
    super.onInit();
    getCities();
    // update();
  }

  getCities() async {
    var cities = await CitiesServices.getCities();
    try {
      isLoading(true);
      if (cities!.isNotEmpty) {
        citiesList.addAll(cities);
      }
    } finally {
      isLoading(false);
    }
  }

  onSearchTextChanged(String text) async {
    text = text.toLowerCase();
    citiesSearchResult.value = citiesList.where((element) {
      var title = element.name.toLowerCase();
      return title.contains(text);
    }).toList();
  }
}
