import 'dart:async';

import 'package:get/get.dart';
import 'package:masu_mart/app/core/services/storage/offline_data.dart';
import 'package:masu_mart/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:masu_mart/app/modules/authentication/views/authentication_view.dart';
import 'package:masu_mart/app/modules/home/bindings/home_binding.dart';
import 'package:masu_mart/app/modules/home/views/home_view.dart';

class SplashController extends GetxController {
  Offline offline = new Offline();
  @override
  void onInit() {
    //loadPage();
    super.onInit();
  }

  loadPage() {
    var _duration = Duration(seconds: 1);
    return Timer(_duration, navigate);
  }

  void navigate() {
    // if (offline.readUser() != null) {
    //   print('positive');

    Get.off(() => AuthenticationView(), binding: AuthenticationBinding());
    // } else {
    //   print('negative');

    //  Get.off(() => HomeView(), binding: HomeBinding());
    // }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
