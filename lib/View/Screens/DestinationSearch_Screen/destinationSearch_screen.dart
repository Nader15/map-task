import 'package:flutter/material.dart';
import '../../../Utils/app_colors.dart';
import 'Widgets/destinationSearchList_widget.dart';
import 'Widgets/destinationSearch_appBar.dart';

class DestinationSearchScreen extends StatelessWidget {
  DestinationSearchScreen({Key? key}) : super(key: key);
  final TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: PreferredSize(
        preferredSize: const Size.fromRadius(40),
        child: DestinationSearchAppBar(),
      ),
      body: DestinationSearchListWidget(),
    );
  }
}
