
import 'package:get/get.dart';
import 'package:map_task/Logic/binding/auth_binding.dart';
import 'package:map_task/View/Screens/destinationSearch_Screen/destinationSearch_screen.dart';
import 'package:map_task/View/Screens/LocationSearch_Screen/locationSearch_screen.dart';
import 'package:map_task/View/Screens/Map_Screen/map_screen.dart';
import 'package:map_task/View/Screens/splash_screen.dart';

class AppRoutes {
  //initialRoute
  static const splashScreen = Routes.splashScreen;
  static const mapScreen = Routes.mapScreen;
  static const locationSearchScreen = Routes.locationSearchScreen;
  static const destinationSearchScreen = Routes.destinationSearchScreen;

  //getPages
  static final routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mapScreen,
      page: () => MapScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.locationSearchScreen,
      page: () => const LocationSearchScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.destinationSearchScreen,
      page: () => const DestinationSearchScreen(),
      binding: AuthBinding(),
    ),

  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const mapScreen = '/mapScreen';
  static const locationSearchScreen = '/locationSearchScreen';
  static const destinationSearchScreen = '/destinationSearchScreen';


}
