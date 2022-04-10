import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_task/Logic/controllers/destination_controller.dart';

import '../../../../Logic/controllers/map_controller.dart';
import '../../../../Utils/app_colors.dart';

class DestinationSearchListWidget extends StatelessWidget {
  DestinationSearchListWidget({Key? key}) : super(key: key);
  final destinationController = Get.find<DestinationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (destinationController.citiesSearchResult.isNotEmpty &&
          destinationController.searchTextController.value.text.isNotEmpty) {
        return ListView.separated(
          itemCount: destinationController.citiesSearchResult.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: AppColors.GREY_SHADE_COLOR,
                child: const Icon(
                  Icons.location_on,
                  color: AppColors.PRIMARY_COLOR,
                ),
              ),
              title: Text(destinationController.citiesSearchResult[index].name),
              subtitle:
                  Text(destinationController.citiesSearchResult[index].country),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        );
      } else {
        return const Center(
          child: Text("Search for city"),
        );
      }
    });
  }
}
