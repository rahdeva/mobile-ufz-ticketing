import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/qr_view/qr_view_controller.dart';

class QrViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrViewController>(() => QrViewController());
  }
}
