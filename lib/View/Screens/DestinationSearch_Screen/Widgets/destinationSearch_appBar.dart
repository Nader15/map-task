import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Logic/controllers/destination_controller.dart';
import '../../../../Utils/app_strings.dart';

class DestinationSearchAppBar extends StatelessWidget {
  DestinationSearchAppBar({Key? key}) : super(key: key);
  final destinationController = Get.find<DestinationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextFormField(
            controller: destinationController.searchTextController.value,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              hintText: AppStrings.DESTINATION_SCREEN_HINT,
              prefixIcon: IconButton(
                splashRadius: 25,
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              suffix: Text(
                "${destinationController.citiesSearchResult.length} city",
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onChanged: destinationController.onSearchTextChanged,
          ),
        ),
      );
    });
  }
}
