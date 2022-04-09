import 'package:flutter/material.dart';
import '../../../../Utils/app_alerts.dart';
import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_constants.dart';
import '../../../../Utils/app_strings.dart';

class RequestButtonWidget extends StatelessWidget {
  const RequestButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          width: AppConstants.mediaWidth(context) / 1.5,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppConstants.widgetsCurve)),
                ),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 15)),
                backgroundColor:
                    MaterialStateProperty.all(AppColors.PRIMARY_COLOR)),
            onPressed: () {
              AppAlerts().requestAlertDialog(context);
            },
            child: const Text(
              AppStrings.MAP_REQUEST_BUTTON,
              style: TextStyle(color: Colors.white),
            ),
            // color: primaryColor,
            // textColor: whiteColor,
          ),
        ),
      ),
    );
  }
}
