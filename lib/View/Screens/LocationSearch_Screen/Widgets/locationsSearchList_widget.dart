import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get.dart';
import 'package:map_task/Models/cities_model.dart';
import '../../../../Logic/controllers/location_controller.dart';
import '../../../../Logic/controllers/map_controller.dart';
import '../../../../Utils/app_colors.dart';

class LocationsSearchListWidget extends StatelessWidget {
  LocationsSearchListWidget({Key? key}) : super(key: key);

  final locationController = Get.find<LocationController>();
  final mapController = Get.find<MapController>();

  @override
  Widget build(BuildContext context) {
    return _buildLocationsList();
  }

  Widget _buildLocationsList() {
    return Obx(() {
      return StreamBuilder<QuerySnapshot>(
        stream: locationController.searchedData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else
            return ListView.separated(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, index) {
                // locationController.fetchMore(snapshot.data!.docs[index], index);
                final city = snapshot.data!.docs[index];
                return ListTile(
                  onTap: () {
                    mapController.locationSearchText.value = city['name'];
                    mapController.locationLat.value = city['lat'];
                    mapController.locationLng.value = city['lng'];
                    Get.back();
                  },
                  leading: CircleAvatar(
                    backgroundColor: AppColors.GREY_SHADE_COLOR,
                    child: const Icon(
                      Icons.location_on,
                      color: AppColors.PRIMARY_COLOR,
                    ),
                  ),
                  title: Text("${city['name']}"),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            );
        },
      );
    });
  }
}
