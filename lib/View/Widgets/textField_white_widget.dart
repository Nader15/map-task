import 'package:flutter/material.dart';
import 'package:map_task/Utils/app_colors.dart';
import 'package:map_task/Utils/app_constants.dart';

class WhiteTextFieldWidget extends StatelessWidget {
  const WhiteTextFieldWidget({Key? key, this.hintText, this.onTab})
      : super(key: key);
  @required
  final String? hintText;
  @required
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab!,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        width: AppConstants.mediaWidth(context),
        decoration: BoxDecoration(
          color: AppColors.WHITE_COLOR,
          borderRadius: BorderRadius.circular(AppConstants.widgetsCurve)
        ),
        child: Text(hintText!,style: TextStyle(color: AppColors.GREY_COLOR),),
      ),
    );
  }
}
