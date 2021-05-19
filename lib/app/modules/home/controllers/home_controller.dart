import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/data/model/ads_model.dart';
import 'package:masu_mart/app/modules/home/views/account_widget.dart';
import 'package:masu_mart/app/modules/home/views/home_widget.dart';
import 'package:masu_mart/app/modules/home/views/myorder_widget.dart';
import 'package:masu_mart/app/modules/home/views/shopping_widget.dart';

class HomeController extends GetxController {
  //fornavigation of homescreen
  RxInt page = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();

  List<Widget> bottomNavIcon = [
    Icon(Icons.home_outlined, size: 30, color: Colors.white),
    // Icon(Icons.list, size: 30, color: Colors.white),
    Icon(Icons.shopping_cart_outlined, size: 30, color: Colors.white),
    Icon(Icons.shopping_bag_outlined, size: 30, color: Colors.white),
    Icon(Icons.perm_identity, size: 30, color: Colors.white),
  ];

  List<Widget> body = [
    HomeWidget(),
    ShoppingWidget(),
    MyOrderWidget(),
    AccountWidget(),
  ];
  void changeNavbar() {
    CurvedNavigationBarState navBarState = bottomNavigationKey.currentState;
    // page.value = index;
    navBarState.setPage(page.value);
  }
//close of home screen

  loadAds() {}
  @override
  void onInit() {
    //changeNavbar();
    super.onInit();
  }

  void changeCategory() {}

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
