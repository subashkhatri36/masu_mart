import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:get/get.dart';

class ProductQty extends StatelessWidget {
  const ProductQty({
    Key key,
    @required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeWidgetContorller>();
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(qty.tr + '/' + controller.productList[index].qtyType),
          SizedBox(
            width: SizeConfig.widthMultiplier,
          ),
          InkWell(
            onTap: () {
              controller.changeQty(index, false);
            },
            child: Container(
              width: 7 * SizeConfig.widthMultiplier,
              height: 2.7 * SizeConfig.heightMultiplier,
              padding: EdgeInsets.all(paddingsmall - 2),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderoutlineRadius),
                    bottomLeft: Radius.circular(borderoutlineRadius)),
              ),
              child: Icon(
                FontAwesomeIcons.minus,
                color: Colors.white,
                size: SizeConfig.heightMultiplier,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 7 * SizeConfig.widthMultiplier,
            height: 2.7 * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: AppTheme.primaryColor)),
            ),
            child: Obx(() => controller.qtyChange.value
                ? QuantityToggle(controller: controller, index: index)
                : QuantityToggle(controller: controller, index: index)),
          ),
          InkWell(
            onTap: () {
              controller.changeQty(index, true);
            },
            child: Container(
              width: 7 * SizeConfig.widthMultiplier,
              height: 2.7 * SizeConfig.heightMultiplier,
              padding: EdgeInsets.all(paddingsmall - 2),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(borderoutlineRadius),
                    bottomRight: Radius.circular(borderoutlineRadius)),
              ),
              child: Icon(
                FontAwesomeIcons.plus,
                color: Colors.white,
                size: SizeConfig.heightMultiplier,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class QuantityToggle extends StatelessWidget {
  const QuantityToggle({
    Key key,
    @required this.controller,
    @required this.index,
  }) : super(key: key);

  final HomeWidgetContorller controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      controller.productList[index].qty.toString(),
      style: Theme.of(context)
          .textTheme
          .headline2
          .copyWith(fontSize: fontmiddle - 2),
      // style: TextStyle(color: Colors.white),
    );
  }
}
