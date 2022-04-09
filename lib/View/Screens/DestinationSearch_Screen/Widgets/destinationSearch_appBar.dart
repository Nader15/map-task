import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Utils/app_strings.dart';

class DestinationSearchAppBar extends StatelessWidget {
  const DestinationSearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            hintText: AppStrings.DESTINATION_SCREEN_HINT,
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
