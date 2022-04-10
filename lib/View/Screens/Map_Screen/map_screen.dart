import 'package:flutter/material.dart';
import 'Widgets/map_screen_drawer.dart';
import 'Widgets/map_widget.dart';
import 'Widgets/requestButton_widget.dart';
import 'Widgets/searches_widget.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MapScreenDrawer(),
      body: Stack(
        children: [
          MapWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              SearchesWidget(scaffoldKey: _scaffoldKey),
              const RequestButtonWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
