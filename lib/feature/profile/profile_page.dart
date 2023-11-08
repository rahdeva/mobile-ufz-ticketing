import '/feature/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/utills/localization/locale_helper.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('txt_menu_profile'.tr),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: 32),
                    Text(
                      controller.user?.name ?? '',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        LocaleHelper().showLocaleDialog(context);
                      },
                      child: Text('txt_button_change_locale'.tr),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.signOut();
                      },
                      child: Text('txt_button_logout'.tr),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
