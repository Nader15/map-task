import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' show cos, sqrt, asin;

class MapController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    update();
    Future.delayed(
      Duration(seconds: 5),
      () {
        getUserLocation();
        locateUser();
      },
    );
  }

  RxString locationSearchText = ''.obs;
  RxString destinationSearchText = ''.obs;
  RxString locationLat = ''.obs;
  RxString locationLng = ''.obs;
  RxString destinationLat = ''.obs;
  RxString destinationLng = ''.obs;
  RxString distanceResult = ''.obs;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Completer<GoogleMapController> controller = Completer();

  // void currentLocation() async {
  //   final GoogleMapController controllerI = await controller.future;
  //   getCurrentLocation();
  //   controllerI.animateCamera(CameraUpdate.newCameraPosition(
  //     CameraPosition(
  //       bearing: 0,
  //       target: currentLatLng.value,
  //       zoom: 18.0,
  //     ),
  //   ));
  // }

  Rx<LatLng> currentLatLng = LatLng(0.0, 0.0).obs;

  void getCurrentLocation() async {
    await Geolocator.getCurrentPosition().then((currLocation) {
      currentLatLng.value =
          new LatLng(currLocation.latitude, currLocation.longitude);
    });
  }

  // method calculate distance between Source & Destination im Map Screen Alert
  String calculateDistance(lat1, lon1, lat2, lon2) {
    var result = 0.0;
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    result = 12742 * asin(sqrt(a));
    print(result);
    if (result >= 1000) {
      return distanceResult.value = "${(result / 1000).toStringAsFixed(2)} KM";
    } else
      return distanceResult.value = "${result.toStringAsFixed(2)} M";
  }

  Rx<LatLng> center = LatLng(26.549999, 31.700001).obs;
  Position? currentLocation;

  final geoLocator =
      Geolocator.getCurrentPosition(forceAndroidLocationManager: true);

  Future<Position> locateUser() async {

    return Geolocator.getCurrentPosition(forceAndroidLocationManager: true)
        .then((Position position) {
      return currentLocation = position;
    });
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    center.value =
        LatLng(currentLocation!.latitude, currentLocation!.longitude);
    print('center ${center.value}');
  }
}
