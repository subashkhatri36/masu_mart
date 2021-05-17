import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:masu_mart/app/modules/home/views/ui/product_qty.dart';
import 'package:masu_mart/app/modules/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/utils/ui_helpers.dart';
import 'package:masu_mart/app/widgets/common%20ui/switch_ui.dart';

class ProductItems extends StatelessWidget {
  final int index;
  const ProductItems({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splash = Get.find<SplashController>();
    final controller = Get.find<HomeWidgetContorller>();
    // Product product = productschicken[index];
    controller.productList[index].producttotalprice =
        controller.productList[index].totalprice;

    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: paddingmiddle - 2, horizontal: paddingsmall - 3),
      child: Stack(
        children: [
          //product image
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: AppTheme.primaryColor)),
            width: 27 * SizeConfig.widthMultiplier,
            height: 15 * SizeConfig.heightMultiplier,
            child: controller.productList[index].networkimage
                ? Image.network(controller.productList[index].productUrl)
                : Image.asset(
                    'assets/images/duck.png',
                  ),
          ),
          //price tags
          Container(
            margin: EdgeInsets.only(left: marginsmall),
            width: 9 * SizeConfig.widthMultiplier,
            height: 5 * SizeConfig.heightMultiplier,
            padding: EdgeInsets.symmetric(horizontal: paddingsmall - 2),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(borderoutlineRadius),
                  bottomRight: Radius.circular(borderoutlineRadius)),
            ),
            alignment: Alignment.center,
            child: Obx(() => controller.switchToggle.value
                ? PriceTagWidget(controller: controller, index: index)
                : PriceTagWidget(controller: controller, index: index)),
          ),
          Container(
            margin: EdgeInsets.only(left: marginxlarge * 4.2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //product Information
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() => Text(
                            !splash.nepaliLanguage.value
                                ? controller.productList[index].productName
                                : controller.productList[index].nepali,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      SizedBox(height: 1.4 * SizeConfig.heightMultiplier),
                      //product qty
                      ProductQty(
                        index: index,
                      ),
                      SizedBox(height: 1.3 * SizeConfig.heightMultiplier),
                      if (controller.productList[index].boneless)
                        Row(
                          children: [
                            Text(
                              bonless.tr,
                            ),
                            Container(
                              height: 2 * SizeConfig.heightMultiplier,
                              child: Obx(() => controller.switchToggle.value
                                  ? SimpleSwitch(
                                      controller: controller,
                                      index: index,
                                      typebone: true,
                                    )
                                  : SimpleSwitch(
                                      controller: controller,
                                      index: index,
                                      typebone: true,
                                    )),
                            ),
                          ],
                        ),
                      SizedBox(height: 1.3 * SizeConfig.heightMultiplier),
                      if (controller.productList[index].skinless)
                        Row(
                          children: [
                            Text(
                              noskin.tr,
                            ),
                            Container(
                              height: 2 * SizeConfig.heightMultiplier,
                              child: Obx(() => controller.switchToggle.value
                                  ? SimpleSwitch(
                                      controller: controller,
                                      index: index,
                                      typebone: false,
                                    )
                                  : SimpleSwitch(
                                      controller: controller,
                                      index: index,
                                      typebone: false,
                                    )),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Container(
                      //   alignment: Alignment.centerRight,
                      //   width: MediaQuery.of(context).size.width,
                      //   height: 3.5 * SizeConfig.heightMultiplier,
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: paddingsmall - 2,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     color: AppTheme.primaryColor,
                      //     borderRadius: BorderRadius.only(
                      //         topLeft: Radius.circular(borderoutlineRadius),
                      //         bottomLeft: Radius.circular(borderoutlineRadius)),
                      //   ),
                      //   child: Text(
                      //     preOrder.tr,
                      //     style: Theme.of(context).textTheme.bodyText1.copyWith(
                      //         color: Colors.white, fontSize: fontsmall + 2),
                      //   ),
                      // ),
                      SizedBox(
                        height: 3.5 * SizeConfig.heightMultiplier,
                      ),

                      Text(
                        total.tr,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(height: SizeConfig.heightMultiplier),
                      Obx(() => (controller.qtyChange.value ||
                              controller.switchToggle.value)
                          ? ProductTotalPrice(
                              controller: controller, index: index)
                          : ProductTotalPrice(
                              controller: controller, index: index)),
                      Container(
                        height: 5 * SizeConfig.heightMultiplier,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: marginmiddle),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.grey,
                            ),
                            onPressed: () {},
                            child: Text(addtocart.tr)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ProductTotalPrice extends StatelessWidget {
  const ProductTotalPrice({
    Key key,
    @required this.controller,
    @required this.index,
  }) : super(key: key);

  final HomeWidgetContorller controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      rs.tr +
          controller.productList[index].producttotalprice.toStringAsFixed(0) +
          '/-',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

class PriceTagWidget extends StatelessWidget {
  const PriceTagWidget({
    Key key,
    @required this.controller,
    @required this.index,
  }) : super(key: key);

  final HomeWidgetContorller controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      rs.tr +
          '\n${controller.productList[index].totalprice.toStringAsFixed(0)}' +
          '/-',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headline3
          .copyWith(color: Colors.white, fontSize: fontsmall),
    );
  }
}
