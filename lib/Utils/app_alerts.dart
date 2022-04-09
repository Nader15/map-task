import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_task/Utils/app_strings.dart';
import '../../../../Utils/app_colors.dart';
import 'app_constants.dart';

class AppAlerts{
  Future<bool?> requestAlertDialog(BuildContext context) async {
    return Get.defaultDialog(
      radius: AppConstants.widgetsCurve,
      titlePadding: EdgeInsets.zero,
      title: '',
      content: Column(
        children: const [
          SizedBox(
            height: 10,
          ),
          Text('connected')
        ],
      ),
      confirm: SizedBox(
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(AppColors.WHITE_COLOR),
            backgroundColor: MaterialStateProperty.all(AppColors.PRIMARY_COLOR),
            shape: MaterialStateProperty.all( RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.widgetsCurve),
            ),),
          ),
          onPressed: () {},
          child: const Text(AppStrings.OK),
        ),
      ),
      onConfirm: () {},
    );
  }
}