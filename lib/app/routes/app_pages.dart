import 'package:get/get.dart';

import 'package:masu_mart/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:masu_mart/app/modules/authentication/views/authentication_view.dart';
import 'package:masu_mart/app/modules/home/bindings/home_binding.dart';
import 'package:masu_mart/app/modules/home/views/home_view.dart';
import 'package:masu_mart/app/modules/search/bindings/search_binding.dart';
import 'package:masu_mart/app/modules/search/views/search_view.dart';
import 'package:masu_mart/app/modules/setting/bindings/setting_binding.dart';
import 'package:masu_mart/app/modules/setting/views/setting_view.dart';
import 'package:masu_mart/app/modules/splash/bindings/splash_binding.dart';
import 'package:masu_mart/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
  ];
}
