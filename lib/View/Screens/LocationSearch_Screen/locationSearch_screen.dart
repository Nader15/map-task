import 'package:flutter/material.dart';

import '../../../Utils/app_colors.dart';
import 'Widgets/locationSearch_appBar.dart';
import 'Widgets/locationsSearchList_widget.dart';

class LocationSearchScreen extends StatelessWidget {
  const LocationSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: PreferredSize(
        preferredSize: Size.fromRadius(40),
        child: LocationSearchAppBar()
      ),
      body: LocationsSearchListWidget()
    );
  }
}
