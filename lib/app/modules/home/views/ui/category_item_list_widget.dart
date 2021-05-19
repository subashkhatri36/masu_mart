import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/data/model/category_model.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/modules/splash/controllers/splash_controller.dart';

class CategoryItemsWidget extends StatelessWidget {
  const CategoryItemsWidget({
    this.index,
    Key key,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeWidgetContorller>();

    return Obx(() => controller.changeSelected.value
        ? CategoryItemSuffel(controller: controller, index: index)
        : CategoryItemSuffel(controller: controller, index: index));
  }
}

class CategoryItemSuffel extends StatelessWidget {
  const CategoryItemSuffel({
    Key key,
    @required this.controller,
    @required this.index,
  }) : super(key: key);

  final HomeWidgetContorller controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    final splash = Get.find<SplashController>();
    Category cat = controller.categoryList[index];
    return InkWell(
      onTap: () {
        controller.changeIndex(index);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: marginsmall),
        padding: EdgeInsets.symmetric(
            horizontal: paddingsmall + 3, vertical: paddingsmall),
        decoration: BoxDecoration(
          color: cat.isSelected ? Colors.blueGrey[600] : Colors.blueGrey[900],
          borderRadius: BorderRadius.circular(borderoutlineRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            cat.networkimage
                ? Image.network(
                    'https://static.xx.fbcdn.net/images/emoji.php/v9/ta5/1/32/1f410.png')
                : Text(
                    cat.image,
                    // style: Theme.of(context).textTheme.headline2,
                  ),
            Obx(() => Text(
                  splash.nepaliLanguage.value ? cat.nepali : cat.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .copyWith(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
