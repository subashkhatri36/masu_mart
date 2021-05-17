import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/data/model/category_model.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:masu_mart/app/modules/home/views/ui/category_item_list_widget.dart';
import 'package:get/get.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeWidgetContorller>();
    controller.loadingCategory();
    return Obx(() => controller.categoryload.isTrue
        ? Container(
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: AppTheme.primaryColor,
              ),
            ),
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              final Category cat = controller.categoryList[index];
              if (cat.active)
                return CategoryItemsWidget(index: index);
              else
                return Container();
            },
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: controller.categoryList.length,
          ));
  }
}
