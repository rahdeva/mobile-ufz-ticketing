import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import '/feature/auth/auth_controller.dart';
import '/resources/resources.dart';
import '/utills/helper/validator.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  final AuthController authController = AuthController.find;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return FormBuilder(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: Image(
                                image:
                                    AppImages.icLogoSuitcoreMain.image().image,
                                color: AppColors.colorPrimary,
                              ),
                            ),
                            SizedBox(height: 48.0),
                            FormBuilderTextField(
                              name: 'email',
                              enabled: !controller.isLoading,
                              decoration: InputDecoration(
                                  hintText: 'txt_email'.tr,
                                  prefixIcon: Icon(Icons.mail)),
                              validator: Validator.required(),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            FormBuilderTextField(
                              name: 'password',
                              enabled: !controller.isLoading,
                              decoration: InputDecoration(
                                  hintText: 'txt_password'.tr,
                                  prefixIcon: Icon(Icons.lock)),
                              validator: Validator.required(),
                              obscureText: true,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}