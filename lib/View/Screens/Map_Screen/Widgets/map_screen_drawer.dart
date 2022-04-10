import 'package:flutter/material.dart';
import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_strings.dart';

class MapScreenDrawer extends StatelessWidget {
  const MapScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: SafeArea(
        child: Container(
          color: AppColors.WHITE_COLOR,
          child: ListView(
            children: [
              ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  backgroundColor: AppColors.PRIMARY_COLOR,
                  child: Icon(Icons.person, color: AppColors.WHITE_COLOR),
                ),
                title: const Text(AppStrings.USER_NAME),
                subtitle: const Text(
                  AppStrings.USER_NAME,
                  style: TextStyle(fontSize: 10),
                ),
                trailing: const Icon(Icons.arrow_drop_down_circle_outlined),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.location_history),
                title: const Text(AppStrings.LOCATION_SHARING),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text(AppStrings.SETTINGS),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.help_outline),
                title: const Text(AppStrings.HELP),
              ),
              const Divider(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customTextButton(
                      text: AppStrings.PRIVACY,
                      function: () {},
                    ),
                    const Icon(Icons.circle, size: 5),
                    customTextButton(
                      text: AppStrings.PRIVACY,
                      function: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextButton customTextButton({String? text, Function? function}) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          AppColors.PRIMARY_COLOR,
        ),
      ),
      onPressed: () {
        function!();
      },
      child: Text(text!),
    );
  }
}
