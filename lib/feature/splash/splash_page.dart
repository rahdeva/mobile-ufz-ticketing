import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '/feature/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
          init: SplashController(),
          builder: (controller) {
            return SafeArea(
                child: Center(
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
              ),
            ));
          }),
    );
  }
}
