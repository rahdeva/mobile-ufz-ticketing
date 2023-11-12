
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/reset_password_controller.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/routes/page_names.dart';
import 'package:mobile_ufz_ticketing/utills/helper/validator.dart';
import 'package:mobile_ufz_ticketing/utills/widget/button/primary_button.dart';
import 'package:mobile_ufz_ticketing/utills/widget/forms/label_form_widget.dart';
import 'package:mobile_ufz_ticketing/utills/widget/forms/text_field_widget.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "txt_flow_forgotpass_check_email".tr,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "txt_flow_forgotpass_password_instructions".tr,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 24),
                    LabelFormWidget(
                      labelText: "txt_flow_forgotpass_input_new_password".tr,
                    ),
                    Obx(
                      () => TextFieldWidget(
                        name: 'password',
                        hintText: 'txt_flow_forgotpass_enter_password'.tr,
                        obsecure: controller.isObscure.value,
                        validator: Validator.list([
                          Validator.password(),
                          Validator.required()
                        ]),
                        keyboardType: TextInputType.text,
                        suffixIcon: IconButton(
                          onPressed: () => controller.obsecurePassword(1),
                          icon: controller.isObscure.value
                            ? const Icon(
                                Icons.visibility_outlined,
                                color: AppColors.gray500,
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                                color: AppColors.gray500,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    LabelFormWidget(
                      labelText: "txt_flow_forgotpass_reenter_new_password".tr,
                    ),
                    Obx(
                      () => TextFieldWidget(
                        name: 'confirm-password',
                        hintText: 'txt_flow_forgotpass_reenter_password'.tr,
                        obsecure: controller.isObscure2.value,
                        validator: Validator.list([
                          Validator.password(),
                          Validator.required()
                        ]),
                        keyboardType: TextInputType.text,
                        suffixIcon: IconButton(
                          onPressed: () => controller.obsecurePassword(2),
                          icon: controller.isObscure2.value
                            ? const Icon(
                                Icons.visibility_outlined,
                                color: AppColors.gray500,
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                                color: AppColors.gray500,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            margin: MediaQuery.of(context).viewInsets.bottom != 0
              ? const EdgeInsets.only(bottom: 0)
              : const EdgeInsets.only(bottom: 60),
            child: PrimaryButtonWidget(
              borderRadius: 12,
              margin: const EdgeInsets.symmetric(horizontal: 35),
              buttonText: "txt_flow_forgotpass_reset_password".tr, 
              onPressed: () async {
                if (
                  controller.formKey.currentState != null &&
                  controller.formKey.currentState!.saveAndValidate()
                ){
                  // controller.resetPassword(
                  //   context: context,
                  //   password: controller.formKey.currentState!.fields['password']!.value,
                  //   confirmPassword: controller.formKey.currentState!.fields['confirm-password']!.value,
                  // );
                  Get.toNamed(PageName.SUCCESS_RESET_PASSWORD);
                }
              },
            ),
          ),
        );
      }
    );
  }
}
