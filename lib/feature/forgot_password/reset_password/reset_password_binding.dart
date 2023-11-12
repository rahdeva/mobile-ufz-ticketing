import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/reset_password_controller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
  }
}
