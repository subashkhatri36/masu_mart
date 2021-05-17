import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:masu_mart/app/modules/splash/controllers/splash_controller.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:get/get.dart';

class PriceHeaderWidget extends StatelessWidget {
  const PriceHeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeWidgetContorller>();
    final splash = Get.find<SplashController>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .30,
      child: Stack(
        children: [
          Opacity(
            opacity: .7,
            child: Image.asset(
              'assets/images/turkey.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * .5,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .05,
              color: AppTheme.primaryColor,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * .05,
                      margin: EdgeInsets.only(top: paddingsmall - 3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(borderoutlineRadius),
                            topRight: Radius.circular(borderoutlineRadius),
                          )),
                      child: Obx(() => Text(
                            splash.nepaliLanguage.value ? 'समाचार' : 'News',
                            style: Theme.of(context).textTheme.bodyText1,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      margin: EdgeInsets.only(left: marginsmall),
                      child: Obx(() => Text(
                            splash.nepaliLanguage.value
                                ? '2078 बाट मूल्य १० रुपैयाँ बढेको छ'
                                : 'Price increase from 2027',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: fontmiddle - 2),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Obx(() => controller.productList[0].networkimage
                ? Image.network(
                    controller.productList[0].productUrl,
                    fit: BoxFit.fitHeight,
                    width: MediaQuery.of(context).size.width * .39,
                  )
                : Image.asset(
                    'assets/images/chicken.png',
                    fit: BoxFit.fitHeight,
                    width: MediaQuery.of(context).size.width * .39,
                  )),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * .05,
                left: MediaQuery.of(context).size.width * .05),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.width * .22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(.20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      todayPrice.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontheading,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 17,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  rs.tr +
                      controller.productList[0].productPrice.toString() +
                      '/-',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontheading,
                      color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
//  BackdropFilter(
//                   filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                   child: Text('Home')),
