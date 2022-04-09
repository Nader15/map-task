import 'package:flutter/material.dart';

import '../../../../Utils/app_colors.dart';

class DestinationSearchListWidget extends StatelessWidget {
  const DestinationSearchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          leading:  CircleAvatar(
            backgroundColor: AppColors.GREY_SHADE_COLOR,
            child: const Icon(
              Icons.location_on,
              color: AppColors.PRIMARY_COLOR,
            ),
          ),
          title: Text("Destination $index"),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
