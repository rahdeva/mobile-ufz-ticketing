import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/otp_verification/otp_verification_controller.dart';

class OTPVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OTPVerificationController>(() => OTPVerificationController());
  }
}
