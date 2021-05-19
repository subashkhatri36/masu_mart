import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/utils/string_utils.dart';

class AddressViewWidget extends StatelessWidget {
  const AddressViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: AppTheme.primaryColor,
              child: Center(child: Icon(Icons.place, color: Colors.white)),
            ),
          ),
          Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          userAddress.tr,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                            child: Icon(
                              Icons.edit,
                              size: 15,
                            ),
                            onTap: () {})
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Dakshinkali -04, 44615, pharphing Kahtmandu bagmati Nepal')
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
