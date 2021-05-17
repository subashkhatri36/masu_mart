import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/theme_data.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: AppTheme.primaryColor,
            child: Center(child: Icon(Icons.money, color: Colors.white)),
          ),
        ),
        Expanded(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add_circle,
                        size: 15,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.info,
                      size: 15,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 4,
                      bottom: 4,
                    ),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.only(
                                right: 8.0,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppTheme.primaryColor,
                                ),
                              ),
                              child: Image.network(
                                'https://i.pinimg.com/280x280_RS/4e/26/e7/4e26e7db448e7570f223bcdf38523d33.jpg',
                                fit: BoxFit.fitHeight,
                              )),
                        );
                      },
                      itemCount: 2,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
