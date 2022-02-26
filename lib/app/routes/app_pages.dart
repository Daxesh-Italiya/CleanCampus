import 'package:get/get.dart';

import 'package:clean_campus/app/modules/add_complain_screen/bindings/add_complain_screen_binding.dart';
import 'package:clean_campus/app/modules/add_complain_screen/views/add_complain_screen_view.dart';
import 'package:clean_campus/app/modules/change_password_screen/bindings/change_password_screen_binding.dart';
import 'package:clean_campus/app/modules/change_password_screen/views/change_password_screen_view.dart';
import 'package:clean_campus/app/modules/home/bindings/home_binding.dart';
import 'package:clean_campus/app/modules/home/views/home_view.dart';
import 'package:clean_campus/app/modules/home_screen/bindings/home_screen_binding.dart';
import 'package:clean_campus/app/modules/home_screen/views/home_screen_view.dart';
import 'package:clean_campus/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:clean_campus/app/modules/login_screen/views/login_screen_view.dart';
import 'package:clean_campus/app/modules/otp_screen/bindings/otp_screen_binding.dart';
import 'package:clean_campus/app/modules/otp_screen/views/otp_screen_view.dart';
import 'package:clean_campus/app/modules/sign_up_screen/bindings/sign_up_screen_binding.dart';
import 'package:clean_campus/app/modules/sign_up_screen/views/sign_up_screen_view.dart';
import 'package:clean_campus/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:clean_campus/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_SCREEN,
      page: () => SignUpScreenView(),
      binding: SignUpScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_COMPLAIN_SCREEN,
      page: () => AddComplainScreenView(),
      binding: AddComplainScreenBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD_SCREEN,
      page: () => ChangePasswordScreenView(),
      binding: ChangePasswordScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP_SCREEN,
      page: () => OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
  ];
}
