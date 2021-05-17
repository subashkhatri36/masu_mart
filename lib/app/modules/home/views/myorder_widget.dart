import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/theme_data.dart';

class MyOrderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                color: AppTheme.primaryColor,
                child: Row(
                  children: [
                    Text(
                      'My Orders',
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      '12',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Get Gift',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.blueAccent,
                )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Your Current Order.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '20/20/2021',
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueAccent,
                        ),
                      ),
                      child: Image.network(
                        'https://yemenbarcodes.com/wp-content/uploads/sites/123/2019/05/qr_code_5cdd30e269752.jpg',
                        fit: BoxFit.fitHeight,
                        width: 180,
                        height: 180,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
