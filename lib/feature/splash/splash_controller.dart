import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 4), () => Get.toNamed('/loader'));
    super.onInit();
  }
}
