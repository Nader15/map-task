import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Logic/controllers/destination_controller.dart';
import '../../../Utils/app_colors.dart';
import 'Widgets/locationSearch_appBar.dart';
import 'Widgets/locationsSearchList_widget.dart';

class LocationSearchScreen extends StatelessWidget {
  LocationSearchScreen({Key? key}) : super(key: key);

  // final locationController = Get.find<DestinationController>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: PreferredSize(
          preferredSize: Size.fromRadius(40), child: LocationSearchAppBar()),
      body: LocationsSearchListWidget(),
    );
  }
}
