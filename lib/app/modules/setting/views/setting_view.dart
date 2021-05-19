import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/splash/controllers/splash_controller.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    final splash = Get.find<SplashController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(paddingmiddle),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(paddingsmall),
                      child: Text(
                        languageSetting.tr,
                        style: TextStyle(fontSize: fontheading),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: paddingsmall),
                      height: 9 * SizeConfig.heightMultiplier,
                      child: Row(
                        children: [
                          Expanded(
                              child: Obx(() => SelectLanguageWidget(
                                    splash: splash,
                                    language: 'English',
                                    color: !splash.nepaliLanguage.value
                                        ? AppTheme.primaryColor
                                        : Colors.grey,
                                  ))),
                          Expanded(
                              child: Obx(() => SelectLanguageWidget(
                                    splash: splash,
                                    language: 'नेपाली',
                                    color: splash.nepaliLanguage.value
                                        ? AppTheme.primaryColor
                                        : Colors.grey,
                                  ))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SelectLanguageWidget extends StatelessWidget {
  const SelectLanguageWidget(
      {Key key, @required this.splash, this.language, this.color})
      : super(key: key);

  final SplashController splash;
  final String language;
  final color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (language == 'English')
          splash.nepaliLanguage.value = false;
        else
          splash.nepaliLanguage.value = true;

        splash.loadLanguage();
      },
      child: Card(
        color: color,
        child: Center(
          child: Text(
            language,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.white, fontSize: fontheading),
          ),
        ),
      ),
    );
  }
}
