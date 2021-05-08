import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.loadPage();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(child: Image.asset('assets/images/masulogo.png')),
    );
  }
}
