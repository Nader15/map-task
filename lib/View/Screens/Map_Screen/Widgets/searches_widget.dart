import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_task/Logic/controllers/map_controller.dart';
import 'package:map_task/Utils/app_constants.dart';

import '../../../../Routes/routes.dart';
import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_strings.dart';
import '../../../Widgets/textField_white_widget.dart';

class SearchesWidget extends StatelessWidget {
  SearchesWidget({Key? key, required this.scaffoldKey}) : super(key: key);
  final GlobalKey<ScaffoldState>? scaffoldKey;

  final mapController = Get.find<MapController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.widgetsCurve),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          elevation: 10,
          color: AppColors.GREY_SHADE_COLOR,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      splashRadius: 25,
                      onPressed: () => scaffoldKey!.currentState!.openDrawer(),
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: Colors.black,
                      ),
                    )),
                const SizedBox(height: 10),
                WhiteTextFieldWidget(
                  hintText: mapController.locationSearchText.value.isEmpty
                      ? AppStrings.MAP_LOCATION_HINT
                      : mapController.locationSearchText.value,
                  onTab: () {
                    Get.toNamed(Routes.locationSearchScreen);
                  },
                ),
                const SizedBox(height: 10),
                WhiteTextFieldWidget(
                  hintText: mapController.destinationSearchText.value.isEmpty
                      ? AppStrings.MAP_DESTINATION_HINT
                      : mapController.destinationSearchText.value,
                  onTab: () {
                    Get.toNamed(Routes.destinationSearchScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
