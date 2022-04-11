import 'package:get/get.dart';
import 'package:map_task/Logic/binding/location_binding.dart';
import '../Logic/binding/destination_binding.dart';
import '../Logic/binding/map_binding.dart';
import '../View/Screens/DestinationSearch_Screen/destinationSearch_screen.dart';
import '../View/Screens/LocationSearch_Screen/locationSearch_screen.dart';
import '../View/Screens/Map_Screen/map_screen.dart';
import '../View/Screens/splash_screen.dart';

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
      binding: MapBinding(),
    ),
    GetPage(
      name: Routes.mapScreen,
      page: () => MapScreen(),
      binding: MapBinding(),
    ),
    GetPage(
      name: Routes.locationSearchScreen,
      page: () => LocationSearchScreen(),
      binding: LocationBinding(),
    ),
    GetPage(
      name: Routes.destinationSearchScreen,
      page: () => DestinationSearchScreen(),
      binding: DestinationBinding(),
    ),
  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const mapScreen = '/mapScreen';
  static const locationSearchScreen = '/locationSearchScreen';
  static const destinationSearchScreen = '/destinationSearchScreen';
}
