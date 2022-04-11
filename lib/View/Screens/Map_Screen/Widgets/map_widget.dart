import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../Logic/controllers/map_controller.dart';

class MapWidget extends StatelessWidget {
   MapWidget({Key? key}) : super(key: key);
  final mapController = Get.find<MapController>();
  @override
  Widget build(BuildContext context) {
    return  GoogleMap(
      mapType: MapType.normal,
      myLocationEnabled: true,
      initialCameraPosition: CameraPosition(
        target:mapController.center.value,
        zoom: 14.4746,
      ),
      onMapCreated: (GoogleMapController controller) {
        mapController.controller.complete(controller);
      },
    );
  }
}
