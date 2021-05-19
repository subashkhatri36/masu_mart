import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/home/controllers/home_controller.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/widgets/custome_button.dart';
import 'package:get/get.dart';

class HereIsAdWidget extends StatelessWidget {
  const HereIsAdWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    //bool image = true;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingsmall + 2),
      width: MediaQuery.of(context).size.width,
      height: 8 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
      ),
      //color: Theme.of(context).primaryColor,
      child: Image.network(
        'https://microtelesofts.files.wordpress.com/2014/08/banner.png',
        fit: BoxFit.fill,
      ),
      // Obx(() => controller.adImage.value
      //     ? Image.network(
      //         'https://microtelesofts.files.wordpress.com/2014/08/banner.png',
      //         fit: BoxFit.fill,
      //       )
      //     : AdsText()),
    );
  }
}

class AdsText extends StatelessWidget {
  const AdsText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Here is title',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black,
                    fontSize: fontsmall + 4,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Here is description of the body and i like it very much',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.black, fontSize: fontsmall + 4),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: CustomButton(
            label: 'Go',
            onPressed: () {},
            borderRadius: borderoutlineRadius,
          ),
        ),
      ],
    );
  }
}
