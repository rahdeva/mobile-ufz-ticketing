
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/forgot_password_controller.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/routes/page_names.dart';
import 'package:mobile_ufz_ticketing/utills/helper/validator.dart';
import 'package:mobile_ufz_ticketing/utills/widget/button/primary_button.dart';
import 'package:mobile_ufz_ticketing/utills/widget/forms/label_form_widget.dart';
import 'package:mobile_ufz_ticketing/utills/widget/forms/text_field_widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
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
          body: SafeArea(
            child: FormBuilder(
              key: controller.formKey,
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(35, 20, 35, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "txt_flow_forgotpass_title".tr,
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "txt_flow_forgotpass_instructions".tr,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      LabelFormWidget(
                        labelText: "txt_flow_forgotpass_email".tr
                      ),
                      TextFieldWidget(
                        name: 'email',
                        hintText: 'txt_flow_forgotpass_input_email'.tr,
                        validator: Validator.list([
                          Validator.required(),
                          Validator.email(),
                        ]),
                        keyboardType: TextInputType.emailAddress,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        borderRadius: 8,
                      ),
                    ],
                  ),
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
              buttonText: "txt_flow_forgotpass_send_code".tr, 
              onPressed: () async {
                if (
                  controller.formKey.currentState != null &&
                  controller.formKey.currentState!.saveAndValidate()
                ){
                  // controller.signInWithEmailAndPassword(
                  //   controller.formKey.currentState!.fields['email']!.value,
                  // );
                  Get.toNamed(PageName.OTP_VERIFICATION);
                }
              },
            ),
          ),
        );
      }
    );
  }
}
