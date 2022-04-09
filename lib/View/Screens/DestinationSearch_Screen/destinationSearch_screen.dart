import 'package:flutter/material.dart';
import '../../../Utils/app_colors.dart';
import 'Widgets/destinationSearchList_widget.dart';
import 'Widgets/destinationSearch_appBar.dart';

class DestinationSearchScreen extends StatelessWidget {
  const DestinationSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: PreferredSize(
            preferredSize: Size.fromRadius(40),
            child: DestinationSearchAppBar()
        ),
        body: DestinationSearchListWidget()
    );
  }
}
