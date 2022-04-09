import 'package:flutter/material.dart';
import 'Widgets/map_widget.dart';
import 'Widgets/requestButton_widget.dart';
import 'Widgets/searches_widget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         MapWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SearchesWidget(),
              RequestButtonWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
