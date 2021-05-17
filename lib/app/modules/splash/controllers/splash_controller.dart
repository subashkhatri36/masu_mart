import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/core/services/storage/offline_data.dart';
import 'package:masu_mart/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:masu_mart/app/modules/authentication/views/authentication_view.dart';

class SplashController extends GetxController {
  RxBool nepaliLanguage = true.obs;
  Offline offline = new Offline();

  @override
  void onInit() {
    // loadPage();

    super.onInit();
  }

  void loadLanguage() {
    print(nepaliLanguage.value);
    if (nepaliLanguage.value)
      changeLanugage('ne', 'NP');
    else
      changeLanugage('en', 'US');
  }

  void changeLanugage(String par1, String par2) {
    print('it enter here ' + par1);
    var local = Locale(par1, par2);
    Get.updateLocale(local);
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
  void onClose() {
    loadLanguage();
  }
}
