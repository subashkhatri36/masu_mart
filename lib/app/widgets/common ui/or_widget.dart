import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:get/get.dart';

class OptionOrWidget extends StatelessWidget {
  const OptionOrWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: AppTheme.primaryColor,
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingmiddle),
          child: Text(
            or.tr,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Expanded(
            child: Divider(
          color: AppTheme.primaryColor,
        )),
      ],
    );
  }
}
