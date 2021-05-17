import 'package:flutter/material.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/utils/ui_helpers.dart';

class SimpleSwitch extends StatelessWidget {
  const SimpleSwitch({
    Key key,
    @required this.controller,
    @required this.index,
    @required this.typebone,
  }) : super(key: key);
  final bool typebone;

  final HomeWidgetContorller controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Switch(
          onChanged: (value) {
            if (typebone) {
              controller.productList[index].bone = value;
            } else {
              controller.productList[index].skin = value;
            }

            controller.productList[index].totalprice = calculateProductPrice(
                controller.productList[index].bone,
                controller.productList[index].skin,
                controller.productList[index].productPrice,
                controller.productList[index].bonelessPrice,
                controller.productList[index].noskinPrice);

            controller.switchToggle.toggle();
          },
          value: typebone
              ? controller.productList[index].bone
              : controller.productList[index].skin,
          activeColor: Colors.blue,
          activeTrackColor: Colors.grey,
          inactiveThumbColor: Colors.redAccent,
          inactiveTrackColor: Colors.grey,
        ));
  }
}
