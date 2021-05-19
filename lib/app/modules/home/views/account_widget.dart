import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/home/views/ui/account_header.dart';
import 'package:masu_mart/app/modules/home/views/ui/address_view_widget.dart';
import 'package:masu_mart/app/modules/home/views/ui/payment_method_widget.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/widgets/custome_button.dart';
import 'package:get/get.dart';

class AccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //only work for horizental
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              AccountHeader(),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: ReferalDashboardWidget(),
                    ),
                    ReferalInfoWidget(),
                    Expanded(
                      flex: 2,
                      child: AddressViewWidget(),
                    ),
                    Expanded(flex: 2, child: PaymentMethodWidget()),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class ReferalDashboardWidget extends StatelessWidget {
  const ReferalDashboardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var expanded = Expanded(
      child: Row(
        children: [
          //count referal
          Expanded(
            child: ReferalInfoCard(),
          ),
          Expanded(
            child: TotalOrderInfo(),
          )
        ],
      ),
    );
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dashboard.tr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            expanded,
          ],
        ),
      ),
    );
  }
}

class TotalOrderInfo extends StatelessWidget {
  const TotalOrderInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  totalOrder.tr,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(
                    child: Icon(
                      Icons.info,
                      size: 15,
                    ),
                    onTap: () {
                      //Order Info
                    })
              ],
            ),
            Spacer(),
            Text(
              '20',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Get exciting gift when you complete 1 Orders',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.grey[600]),
              ),
            ),
            Spacer(),
            CustomButton(
              label: gift.tr,
              labelColor: Colors.white,
              btnColor: Colors.blueAccent,
              onPressed: () {},
              borderRadius: 10,
            )
          ],
        )),
      ),
    );
  }
}

class ReferalInfoCard extends StatelessWidget {
  const ReferalInfoCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  totalReferal.tr,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(
                    child: Icon(
                      Icons.info,
                      size: 15,
                    ),
                    onTap: () {})
              ],
            ),
            Spacer(),
            Text(
              '101',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Per referal you 1 points. need 10 referal to get exciting gift',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.grey[600]),
              ),
            ),
            Spacer(),
            CustomButton(
              label: use.tr,
              labelColor: Colors.white,
              btnColor: Colors.blueAccent,
              onPressed: () {},
              borderRadius: 10,
            )
          ],
        )),
      ),
    );
  }
}

class ReferalInfoWidget extends StatelessWidget {
  const ReferalInfoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(yourrefcode.tr,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Icon(
                  Icons.info,
                  size: 15,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text('email1234',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Note:Used This Code to earn point and get exciting Offere from Masu mart',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.primaryColor,
                    fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
