import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:masu_mart/app/constants/theme_data.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.loadPage();
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Center(child: Image.asset('assets/images/masulogo.png')),
    );
  }
}
