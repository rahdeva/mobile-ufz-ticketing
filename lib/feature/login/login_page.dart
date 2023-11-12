import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/routes/page_names.dart';
import 'package:mobile_ufz_ticketing/utills/localization/locale_helper.dart';
import 'package:mobile_ufz_ticketing/utills/widget/button/secondary_button.dart';
import 'package:mobile_ufz_ticketing/utills/widget/forms/label_form_widget.dart';
import '/utills/helper/validator.dart';
import '/utills/widget/button/primary_button.dart';
import '/utills/widget/forms/text_field_widget.dart';
import '/resources/resources.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: FormBuilder(
              key: controller.formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 35),
                        child: SecondaryButtonWidget(
                          margin: const EdgeInsets.all(0),
                          width: 120,
                          buttonText: "txt_flow_login_language".tr,
                          padding: 5,
                          onPressed: (){
                            showCupertinoModalPopup<void>(
                              context: context,
                              builder: (BuildContext context) => CupertinoActionSheet(
                                title: Text(
                                  'txt_flow_login_change_language'.tr,
                                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black
                                  ),
                                ),
                                actions: <CupertinoActionSheetAction>[
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      LocaleHelper.updateLocale(context, const Locale('en'), "English");
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'txt_flow_login_english'.tr,
                                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black
                                            ),
                                          ),
                                          LocaleHelper.getCurrentLocale() == const Locale('en')
                                          ? const Icon(
                                              Icons.check,
                                              color: AppColors.black,
                                            )
                                          : const SizedBox()
                                        ],
                                      ),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      LocaleHelper.updateLocale(context, const Locale('id'), "Indonesia");
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'txt_flow_login_indonesian'.tr,
                                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black
                                            ),
                                          ),
                                          LocaleHelper.getCurrentLocale() == const Locale('id')
                                          ? const Icon(
                                              Icons.check,
                                              color: AppColors.black,
                                            )
                                          : const SizedBox()
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(35, 20, 35, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "txt_flow_login_welcome".tr,
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "txt_flow_login_sign_in".tr,
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LabelFormWidget(
                            labelText: "txt_flow_login_email".tr
                          ),
                          TextFieldWidget(
                            name: 'email',
                            hintText: 'txt_flow_login_enter_email'.tr,
                            validator: Validator.list([
                              Validator.required(),
                              // Validator.email(),
                            ]),
                            keyboardType: TextInputType.emailAddress,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            borderRadius: 8,
                          ),
                          const SizedBox(height: 16),
                          LabelFormWidget(
                            labelText: "txt_flow_login_password".tr
                          ),
                          TextFieldWidget(
                            name: 'password',
                            hintText: 'txt_flow_login_enter_password'.tr,
                            obsecure: controller.isObscure,
                            validator: Validator.required(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            keyboardType: TextInputType.text,
                            borderRadius: 8,
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.isObscure = !controller.isObscure;
                                controller.update();
                              },
                              icon: controller.isObscure
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
                          const SizedBox(height: 16),
                          InkWell(
                            onTap: (){
                              Get.toNamed(PageName.FORGOT_PASSWORD);
                            }, 
                            child: Text(
                              'txt_flow_login_forgot_password'.tr,
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
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
              buttonText: "txt_flow_login_login".tr, 
              onPressed: () async {
                if (
                  controller.formKey.currentState != null &&
                  controller.formKey.currentState!.saveAndValidate()
                ){
                  controller.signInWithEmailAndPassword(
                    controller.formKey.currentState!.fields['email']!.value,
                    controller.formKey.currentState!.fields['password']!.value,
                  );
                }
              },
            ),
          ),
        );
      }
    );
  }
}

