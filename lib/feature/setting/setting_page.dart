import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mobile_ufz_ticketing/feature/setting/setting_controller.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/utills/widget/button/primary_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(35, 40, 35, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        // imageUrl: controller.currentUser?.photoUrl != ""
                        //   ? "${BaseUrl.static}${controller.currentUser?.photoUrl}"
                        //   : "https://ui-avatars.com/api/?size=120&name=${controller.currentUser?.employeeName ?? "User"}",
                        imageUrl: "https://ui-avatars.com/api/?size=120&name=Yuni",
                        imageBuilder: (context, imageProvider) => CircleAvatar(
                          radius: 32,
                          backgroundImage: imageProvider,
                        ),
                        placeholder: (context, url) => const CircleAvatar(
                          radius: 32,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) => const CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                            // "https://ui-avatars.com/api/?size=120&name=${controller.currentUser?.employeeName ?? "User"}"
                            "https://ui-avatars.com/api/?size=120&name=Yuni"
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Yuni@UFZone.com',
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.fromLTRB(35, 40, 35, 0),
                //   child: Column(
                //     children: [
                //       Text(
                //         'Yuni@UFZone.com',
                //         style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                //           color: AppColors.black,
                //           fontWeight: FontWeight.w700
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            margin: const EdgeInsets.only(bottom: 32),
            child: PrimaryButtonWidget(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              customColors: AppColors.red50,
              otherButtonColor: true,
              borderRadius: 12,
              buttonText: "txt_flow_logout_log_out".tr, 
              onPressed: (){
                showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) 
                    => CupertinoAlertDialog(
                    title: Text(
                      'Confirmation'.tr,
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    content: Text(
                      'txt_flow_logout_confirm_logout'.tr,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.gray500,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    actions: [
                      CupertinoDialogAction(
                        isDefaultAction: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'txt_flow_logout_cancel'.tr,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.gray500,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                      CupertinoDialogAction(
                        isDestructiveAction: true,
                        onPressed: () {
                          controller.signOut();
                        },
                        child: Text(
                          'txt_flow_logout_yes_logout'.tr,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.red,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      }
    );
  }
}
