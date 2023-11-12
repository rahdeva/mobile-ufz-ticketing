// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QrViewController extends GetxController {
  RxBool isFlashOn = false.obs;


  // void inputQR({
  //   required String code,
  // }) async {
  //   LocationbyCodeResponse? locByCodeResponse;
  //   final dio = await AppDio().getDIO();

  //   try {
  //     final getLocByCode = await dio.get(
  //       "${BaseUrl.locByQR}?qrcode=$code",
  //     );
  //     debugPrint('Location by Code : ${getLocByCode.data}');
  //     locByCodeResponse = LocationbyCodeResponse.fromJson(getLocByCode.data);
  //     Get.toNamed(
  //       PageName.SUBMIT_CHECK_POINT,
  //       arguments: locByCodeResponse.data
  //     );
  //   } on DioError catch (error) {
  //     SnackbarWidget.defaultSnackbar(
  //       icon: const Icon(
  //         Icons.cancel,
  //         color: AppColors.danger,
  //       ),
  //       title: "Code tidak ditemukan!",
  //       subtitle: "Masukkan ulang Code QR yang benar",
  //     );
  //     debugPrint(error.toString());
  //   }
  //   update();
  // }
}