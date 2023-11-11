import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/discover/discover_page.dart';
import 'package:mobile_ufz_ticketing/feature/setting/setting_page.dart';
import '/feature/bottom_nav_bar/nav_tab_binding.dart';
import '/feature/bottom_nav_bar/nav_tab_page.dart';
import '/feature/loader/loading_page.dart';
import '/feature/login/login_binding.dart';
import '/feature/login/login_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.LOADER,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: PageName.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PageName.NAVTAB,
      page: () => const NavTabPage(),
      binding: NavTabBinding()
    ),
    GetPage(
      name: PageName.DASHBOARD,
      page: () => const DashboardPage(),
    ),
    GetPage(
      name: PageName.PAST_TICKET,
      page: () => const SettingPage(),
    ),
  ];
}
