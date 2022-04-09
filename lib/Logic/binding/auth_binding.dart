import 'package:get/get.dart';
import 'package:map_task/Logic/controllers/map_controller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(MapController());
  }
}