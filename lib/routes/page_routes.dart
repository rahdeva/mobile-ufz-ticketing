import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/discover/discover_page.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/forgot_password_binding.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/forgot_password_page.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/otp_verification/otp_verification_binding.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/otp_verification/otp_verification_page.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/reset_password_binding.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/reset_password_page.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/success_reset/success_reset_binding.dart';
import 'package:mobile_ufz_ticketing/feature/forgot_password/reset_password/success_reset/success_reset_page.dart';
import 'package:mobile_ufz_ticketing/feature/qr_view/qr_view_binding.dart';
import 'package:mobile_ufz_ticketing/feature/qr_view/qr_view_page.dart';
import 'package:mobile_ufz_ticketing/feature/setting/setting_page.dart';
import '/feature/bottom_nav_bar/nav_tab_binding.dart';
import '/feature/bottom_nav_bar/nav_tab_page.dart';
import '/feature/loader/loading_page.dart';
import '/feature/login/login_binding.dart';
import '/feature/login/login_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.LOADER,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: PageName.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PageName.NAVTAB,
      page: () => const NavTabPage(),
      binding: NavTabBinding()
    ),
    GetPage(
      name: PageName.DISCOVER,
      page: () => const DiscoverPage(),
    ),
    GetPage(
      name: PageName.PAST_TICKET,
      page: () => const SettingPage(),
    ),
    GetPage(
      name: PageName.FORGOT_PASSWORD,
      page: () => const ForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: PageName.OTP_VERIFICATION,
      page: () => const OTPVerificationPage(),
      binding: OTPVerificationBinding()
    ),
    GetPage(
      name: PageName.RESET_PASSWORD,
      page: () => const ResetPasswordPage(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: PageName.SUCCESS_RESET_PASSWORD,
      page: () => const SuccessResetPasswordPage(),
      binding: SuccessResetPasswordBinding()
    ),
    GetPage(
      name: PageName.QR_VIEW,
      page: () => const QrViewPage(),
      binding: QrViewBinding(),
    ),
  ];
}
