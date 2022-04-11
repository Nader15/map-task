import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/controllers/map_controller.dart';
import 'Widgets/map_screen_drawer.dart';
import 'Widgets/map_widget.dart';
import 'Widgets/requestButton_widget.dart';
import 'Widgets/searches_widget.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);
  final mapController = Get.find<MapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mapController.scaffoldKey,
      drawer: const MapScreenDrawer(),
      body: Stack(
        children: [
          MapWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchesWidget(scaffoldKey: mapController.scaffoldKey),
              RequestButtonWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
