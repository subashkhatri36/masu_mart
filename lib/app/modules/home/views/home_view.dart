import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:masu_mart/app/modules/splash/controllers/splash_controller.dart';
import 'package:masu_mart/app/utils/size_config.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  // int _page = 0;
  // GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.find<HomeController>();
  final controllerHome = Get.put(HomeWidgetContorller());
  final splashController = Get.put(SplashController());
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppTheme.primaryColor,
        body: Container(
          child: controller.body[_page],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          key: controller.bottomNavigationKey,
          index: 0,
          height: 7 * SizeConfig.heightMultiplier,
          items: controller.bottomNavIcon,
          color: AppTheme.primaryColor,
          buttonBackgroundColor: AppTheme.primaryColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
            //controller.page.value = index;
            // controller.changeNavbar();
          },
          letIndexChange: (index) => true,
        ));
  }
}
