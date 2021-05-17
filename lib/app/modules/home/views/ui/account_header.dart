import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masu_mart/app/constants/theme_data.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .30,
      child: Stack(
        children: [
          Image.network(
            'https://i.pinimg.com/originals/4d/dd/90/4ddd901098bf0a6f3dfa5389dafd97d9.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/4d/dd/90/4ddd901098bf0a6f3dfa5389dafd97d9.jpg',
                        ),
                        radius: 57,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: AppTheme.primaryColor,
                        child: Icon(Icons.camera, color: Colors.white),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Name',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                        child: Icon(
                          FontAwesomeIcons.checkCircle,
                          color: Colors.white,
                          size: 10,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'email@gmail.com',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: CircleAvatar(
              backgroundColor: AppTheme.primaryColor,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 55,
            child: CircleAvatar(
              backgroundColor: AppTheme.primaryColor,
              child: Icon(
                FontAwesomeIcons.powerOff,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
