import 'package:get/get.dart';
import '../past_ticket/past_ticket_controller.dart';
import '../setting/setting_controller.dart';
import '/feature/bottom_nav_bar/nav_tab_controller.dart';
import '../discover/discover_controller.dart';

class NavTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavTabController>(() => NavTabController());
    Get.lazyPut<DiscoverController>(() => DiscoverController());
    Get.lazyPut<PastTicketController>(() => PastTicketController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}