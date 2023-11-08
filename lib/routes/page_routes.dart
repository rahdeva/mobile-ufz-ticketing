import '/feature/bottom_nav_bar/nav_tab_binding.dart';
import '/feature/bottom_nav_bar/nav_tab_page.dart';
import '/feature/profile/profile_page.dart';
import 'package:get/get.dart';
import '/feature/login/login_binding.dart';
import '/feature/places/detail/place_detail_binding.dart';
import '/feature/loader/loading_page.dart';
import '/feature/login/login_page.dart';
import '/feature/places/detail/place_detail_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PageName.LOADER,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: PageName.HOME,
      page: () => const NavTabPage(),
      binding: NavTabBinding()
    ),
    GetPage(
      name: PageName.PROFILE, 
      page: () => ProfilePage()
    ),
    GetPage(
      name: PageName.USER_DETAIL,
      page: () => PlaceDetailPage(),
      binding: PlaceDetailBinding()
    ),
  ];
}
