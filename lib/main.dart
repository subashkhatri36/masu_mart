import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/utils/language_translate.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        final lan = Locale('en', 'US');
        //  print(Get.deviceLocale);
        //TODO: change the language and save it through the setting.
        return GetMaterialApp(
          title: appName.tr,
          translations: TLanguage(),
          locale: lan, //need to change it too
          fallbackLocale: lan,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          initialRoute: AppPages.INITIAL,
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
        );
      });
    });
  }
}
