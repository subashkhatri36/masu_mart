import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String productName;
  final String nepali;
  final double productPrice;
  final String categoryId;
  final String productDetail;
  final String productUrl;
  final double bonelessPrice;
  final double noskinPrice;
  final bool boneless;
  final bool skinless;
  final bool networkimage;
  int qty;
  double totalprice;
  double producttotalprice;
  final bool offer;
  final bool discount;
  final String qtyType;
  final bool active;
  bool skin;
  bool bone;
  final int index;
  final String pricerisefall;

  Product({
    @required this.index,
    this.id,
    @required this.nepali,
    @required this.productName,
    @required this.productPrice,
    @required this.categoryId,
    @required this.productDetail,
    @required this.productUrl,
    @required this.bonelessPrice,
    @required this.noskinPrice,
    @required this.boneless,
    @required this.skinless,
    @required this.networkimage,
    this.qty = 1,
    this.totalprice,
    this.offer = false,
    this.discount = false,
    this.producttotalprice = 0,
    @required this.qtyType,
    @required this.active,
    this.skin = false,
    this.bone = false,
    this.pricerisefall,
  });
}
