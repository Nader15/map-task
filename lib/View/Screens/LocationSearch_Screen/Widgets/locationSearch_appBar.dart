import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Logic/controllers/location_controller.dart';
import '../../../../Utils/app_strings.dart';

class LocationSearchAppBar extends StatelessWidget {
   LocationSearchAppBar({Key? key}) : super(key: key);
  final locationController = Get.find<LocationController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TextFormField(
          // controller: locationController.searchTextController.value,
          onChanged: (text){
            locationController.searchText.value = text;
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintText: AppStrings.LOCATION_SCREEN_HINT,
            prefixIcon: IconButton(
              splashRadius: 25,
              onPressed: () {
                Get.back();
              },

              icon: const Icon(Icons.arrow_back),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
