import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/success_reset/success_reset_controller.dart';

class SuccessResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessResetPasswordController>(() => SuccessResetPasswordController());
  }
}
