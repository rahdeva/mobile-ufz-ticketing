import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/auth/auth_controller.dart';

class SettingController extends GetxController {
  final AuthController authController = AuthController.find;
  
  Future<void> signOut() async {
    await authController.signOut();
  }
}
