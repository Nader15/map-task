import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_task/Utils/app_strings.dart';
import '../../../../Utils/app_colors.dart';
import '../Logic/controllers/map_controller.dart';
import 'app_constants.dart';

class AppAlerts {
  final mapController = Get.find<MapController>();

  showSnackBar(controller) {
    return controller.scaffoldKey.currentState!.showSnackBar(
      SnackBar(
        backgroundColor: AppColors.RED_COLOR,
        content: new Text(AppStrings.ENTER_LOCATION_DESTINATION),
        duration: new Duration(seconds: 5),
      ),
    );
  }

  Future<bool?> requestAlertDialog(BuildContext context) async {
    mapController.calculateDistance(
      double.parse(mapController.locationLat.value),
      double.parse(mapController.locationLat.value),
      double.parse(mapController.destinationLat.value),
      double.parse(mapController.destinationLng.value),
    );
    return Get.defaultDialog(
      radius: AppConstants.widgetsCurve,
      // titlePadding: EdgeInsets.zero,
      title: 'Distance',
      titleStyle: TextStyle(fontSize: 15, color: AppColors.GREY_COLOR),
      content: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined,
                    color: AppColors.PRIMARY_COLOR),
                SizedBox(width: 10),
                Text(
                  mapController.locationSearchText.value,
                  style:
                      TextStyle(color: AppColors.PRIMARY_COLOR, fontSize: 18),
                ),
              ],
            ),
            Icon(Icons.keyboard_arrow_down, color: AppColors.GREY_SHADE_COLOR),
            Icon(Icons.keyboard_arrow_down, color: AppColors.GREY_SHADE_COLOR),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: AppColors.PRIMARY_COLOR),
                SizedBox(width: 10),
                Text(
                  mapController.destinationSearchText.value,
                  style:
                      TextStyle(color: AppColors.PRIMARY_COLOR, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(mapController.distanceResult.value,style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
      confirm: SizedBox(
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(AppColors.WHITE_COLOR),
            backgroundColor: MaterialStateProperty.all(AppColors.PRIMARY_COLOR),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.widgetsCurve),
              ),
            ),
          ),
          onPressed: () {
            Get.back();
          },
          child: const Text(AppStrings.OK),
        ),
      ),
      onConfirm: () {},
    );
  }
}
