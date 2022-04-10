import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_task/Models/cities_model.dart';
import 'package:map_task/Services/cities_services.dart';

class MapController extends GetxController {

  Completer<GoogleMapController> controller = Completer();

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static const CameraPosition kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  void onInit() async {
    super.onInit();
    update();
  }

}
