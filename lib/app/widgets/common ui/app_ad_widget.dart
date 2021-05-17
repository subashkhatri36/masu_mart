import 'package:flutter/material.dart';
import 'package:masu_mart/app/utils/size_config.dart';

class HereIsAdWidget extends StatelessWidget {
  const HereIsAdWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 7 * SizeConfig.heightMultiplier,
      color: Theme.of(context).primaryColor,
      child: Text('Here is setup'),
    );
  }
}
