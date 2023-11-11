import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/bottom_nav_bar/widgets/sm_bottom_navbar_item.dart';
import 'package:mobile_ufz_ticketing/feature/past_ticket/past_ticket_page.dart';
import 'package:mobile_ufz_ticketing/feature/setting/setting_page.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import '../discover/discover_page.dart';

import 'nav_tab_controller.dart';

class NavTabPage extends StatelessWidget {
  const NavTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavTabController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                DashboardPage(),
                PastTicketPage(),
                SettingPage(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                border: Border(
                  top: BorderSide(color: Colors.white, width: 1.0
                )
              )
            ),
            child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 5,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SMBottomNavBarItem(
                    imageDeactive: AppImages.icDiscoverUnactive.image(),
                    imageActive: AppImages.icDiscoverActive.image(),
                    currentIndex: controller.tabIndex,
                    onTap: controller.changeTabIndex,
                    label: 'txt_bottomnav_discover'.tr,
                    index: 0,
                  ),
                  SMBottomNavBarItem(
                    imageDeactive: AppImages.icPastTicketUnactive.image(),
                    imageActive: AppImages.icPastTicketActive.image(),
                    currentIndex: controller.tabIndex,
                    onTap: (value) {
                      controller.changeTabIndex(value);
                    },
                    label: 'txt_bottomnav_past_ticket'.tr,
                    index: 1,
                  ),
                  SMBottomNavBarItem(
                    imageDeactive: AppImages.icSettingUnactive.image(),
                    imageActive: AppImages.icSettingActive.image(),
                    currentIndex: controller.tabIndex,
                    onTap: controller.changeTabIndex,
                    label: 'txt_bottomnav_setting'.tr,
                    index: 2,
                  ),
                ],
              ),
            )
          ),
        );
      },
    );
  }
}