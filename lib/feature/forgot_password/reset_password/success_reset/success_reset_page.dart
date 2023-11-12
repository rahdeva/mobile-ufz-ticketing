
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/success_reset/success_reset_controller.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/routes/page_names.dart';
import 'package:mobile_ufz_ticketing/utills/widget/button/primary_button.dart';

class SuccessResetPasswordPage extends StatelessWidget {
  const SuccessResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SuccessResetPasswordController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "🤩",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 72
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "txt_flow_forgotpass_password_changed".tr,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 32),
                  PrimaryButtonWidget(
                    borderRadius: 12,
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    buttonText: "txt_flow_forgotpass_return_to_login".tr, 
                    onPressed: () {
                      Get.toNamed(PageName.LOGIN);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
