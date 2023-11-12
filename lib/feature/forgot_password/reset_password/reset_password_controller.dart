import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
// import 'package:dio/dio.dart';
// import 'package:mobile_ufz_ticketing/data/remote/endpoint.dart';
// import 'package:mobile_ufz_ticketing/resources/resources.dart';
// import 'package:mobile_ufz_ticketing/routes/page_names.dart';
// import 'package:mobile_ufz_ticketing/utills/helper/loading_helper.dart';
// import 'package:mobile_ufz_ticketing/utills/widget/snackbar/snackbar_widget.dart';

class ResetPasswordController extends GetxController {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  // String otpCode = "";
  RxBool isObscure = true.obs;
  RxBool isObscure2 = true.obs;

  @override
  void onInit() {
    // otpCode = Get.arguments;
    super.onInit();
  }

  void obsecurePassword(int index){
    if(index == 1){
      isObscure.value = !isObscure.value;
    } else if(index == 2){
      isObscure2.value = !isObscure2.value;
    }
  }

  // void resetPassword({
  //   required BuildContext context,
  //   required String password,
  //   required String confirmPassword,
  // }) async {
  //   if(password != confirmPassword){
  //     SnackbarWidget.defaultSnackbar(
  //       icon: const Icon(
  //         Icons.cancel,
  //         color: AppColors.red,
  //       ),
  //       title: "Cek ulang data!",
  //       subtitle: "Password dan Confirm Password berbeda",
  //     );
  //     return;
  //   }
  //   showLoading();
  //   final Dio dio = Dio(
  //     BaseOptions(
  //       // connectTimeout: 30000,
  //       // receiveTimeout: 30000,
  //       headers: {
  //         "Content-Type": 'application/json',
  //       }
  //     ),
  //   );

  //   try {
  //     final resetPaswwordData = await dio.post(
  //       BaseUrl.realisasi,
  //       data: {
  //         "token": otpCode,
  //         "password": password
  //       }
  //     );
  //     debugPrint('Reset Password: ${resetPaswwordData.data}');
  //     dismissLoading();
  //     Get.offAllNamed(PageName.LOGIN);
  //   } on DioError catch (error) {
  //     dismissLoading();
  //     SnackbarWidget.defaultSnackbar(
  //       icon: const Icon(
  //         Icons.cancel,
  //         color: AppColors.red,
  //       ),
  //       title: "Gagal!",
  //       subtitle: "Cek kembali kode OTP yang Anda masukkan"
  //     );
  //     debugPrint(error.toString());
  //   }
  // }
}