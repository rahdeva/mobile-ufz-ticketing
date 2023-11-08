import 'package:get/get.dart';
import '/feature/places/detail/place_detail_controller.dart';

class PlaceDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceDetailController>(
        () => PlaceDetailController(id: Get.arguments));
  }
}
