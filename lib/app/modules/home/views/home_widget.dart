import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/data/data/all_temp_data.dart';
import 'package:masu_mart/app/modules/home/controllers/homewiget_controller.dart';
import 'package:masu_mart/app/modules/home/views/ui/category_list_widget.dart';
import 'package:masu_mart/app/modules/home/views/ui/product_item.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/widgets/common%20ui/app_ad_widget.dart';
import 'package:masu_mart/app/widgets/common%20ui/homepage_header.dart';
import 'package:masu_mart/app/widgets/custome_input_field.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  final controllerHome = Get.put(
    () => HomeWidgetContorller(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            PriceHeaderWidget(),
            HereIsAdWidget(),
            Padding(
              padding: const EdgeInsets.all(paddingmiddle),
              child: CustomTextFieldForm(
                hintText: search.tr,
                prefixIcon: Icons.search,
                round: true,
              ),
            ),
            //category
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: paddingsmall + 2, vertical: paddingsmall),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 5 * SizeConfig.heightMultiplier,
                  child: CategoryListWidget(),
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: paddingsmall + 3),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  if (index > 0)
                    return ProductItems(index: index);
                  else
                    return Container();
                },
                shrinkWrap: true,
                itemCount: productschicken.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
