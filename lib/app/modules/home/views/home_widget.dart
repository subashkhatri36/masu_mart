import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/data/data/all_temp_data.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:masu_mart/app/modules/home/views/ui/category_list_widget.dart';
import 'package:masu_mart/app/modules/home/views/ui/product_item.dart';
import 'package:masu_mart/app/modules/search/bindings/search_binding.dart';
import 'package:masu_mart/app/modules/search/views/search_view.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/widgets/common%20ui/app_ad_widget.dart';
import 'package:masu_mart/app/widgets/common%20ui/homepage_header.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  final controllerHome = Get.put(
    () => HomeWidgetContorller(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(flex: 3, child: PriceHeaderWidget()),
          Expanded(flex: 1, child: HereIsAdWidget()),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: paddingmiddle, vertical: paddingsmall),
            child: InkWell(
              onTap: () {
                Get.to(() => SearchView(), binding: SearchBinding());
              },
              child: Container(
                height: 6.5 * SizeConfig.heightMultiplier,
                padding: EdgeInsets.only(left: paddingmiddle),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(borderoutlineRadius),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: paddingmiddle,
                    ),
                    Text(search.tr)
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingsmall + 2, vertical: paddingsmall),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 5 * SizeConfig.heightMultiplier,
                child: CategoryListWidget(),
              )),
          Expanded(
            flex: 6,
            child: ProductListWidget(),
          )

          //     CustomTextFieldForm(
          //   hintText: search.tr,
          //   prefixIcon: Icons.search,
          //   round: true,
          // ),

          //category
        ],
      ),
    );
  }
}

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homecontroller = Get.find<HomeWidgetContorller>();
    return Obx(() => homecontroller.loadingProduct.value
        ? Container(child: CircularProgressIndicator())
        : ListView(
            shrinkWrap: true,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: paddingsmall + 3),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    if (index > 0)
                      return ProductItems(
                        index: index,
                        isshopping: true,
                      );
                    else
                      return Container();
                  },
                  shrinkWrap: true,
                  itemCount: homecontroller.productList.length,
                ),
              ),
            ],
          ));
  }
}
