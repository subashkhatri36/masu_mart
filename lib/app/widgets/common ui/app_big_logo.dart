import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/image_path.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/utils/size_config.dart';

class AppBigLogo extends StatelessWidget {
  const AppBigLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18 * SizeConfig.heightMultiplier,
      width: 40 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(4 * SizeConfig.widthMultiplier),
      ),
      child: Padding(
        padding: const EdgeInsets.all(paddingsmall),
        child: Image.asset(image_logo),
      ),
    );
  }
}
