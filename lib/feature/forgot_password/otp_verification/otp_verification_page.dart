import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/otp_verification/otp_verification_controller.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/routes/page_names.dart';
import 'package:mobile_ufz_ticketing/utills/widget/button/primary_button.dart';
import 'package:mobile_ufz_ticketing/utills/widget/forms/pin_input_widget.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OTPVerificationController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "txt_flow_forgotpass_back".tr,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.black
              ),
            )
          ),
          body: FormBuilder(
            key: controller.formKey,
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.fromLTRB(35, 20, 35, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "txt_flow_forgotpass_check_email".tr,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 16),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${'txt_flow_forgotpass_sent_code'.tr} ",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "Yuni@ufzone.com",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ". ${'txt_flow_forgotpass_enter_code'.tr}",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(height: 32),
                    PinInputWidget(
                      length: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      onCompleted: (pin) {
                        debugPrint(pin);
                        controller.otpIsCompleted.value = true;
                        controller.otpCode = pin;
                      },
                      onChanged: (pin) {
                        if(pin.length != 4){
                          controller.otpIsCompleted.value = false;
                        }
                      }
                    ),
                    const SizedBox(height: 32),
                    Text(
                      "txt_flow_forgotpass_resend_code".tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Visibility(
            visible: controller.otpIsCompleted.value,
            child: Container(
              margin: MediaQuery.of(context).viewInsets.bottom != 0
                ? const EdgeInsets.only(bottom: 0)
                : const EdgeInsets.only(bottom: 60),
              child: PrimaryButtonWidget(
                borderRadius: 12,
                margin: const EdgeInsets.symmetric(horizontal: 35),
                buttonText: "txt_flow_forgotpass_verification".tr, 
                onPressed: () async {
                  if (
                    controller.formKey.currentState != null &&
                    controller.formKey.currentState!.saveAndValidate()
                  ){
                    // controller.signInWithEmailAndPassword(
                    //   controller.formKey.currentState!.fields['email']!.value,
                    // );
                    // Get.toNamed(
                    //   PageName.LOGIN,
                    //   arguments: controller.otpCode
                    // );
                    Get.toNamed(PageName.RESET_PASSWORD);
                  }
                },
              ),
            ),
          ),
        );
      }
    );
  }
}
