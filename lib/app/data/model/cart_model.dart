import 'dart:convert';

import 'package:flutter/foundation.dart';

class Cart {
  final String id;
  final List<CartProduct> product;
  double delivery;
  double discount;
  double offer;
  double totalPrice;
  String date;
  Cart({
    @required this.id,
    @required this.product,
    this.delivery = 0.0,
    this.discount = 0.0,
    this.offer = 0.0,
    this.totalPrice = 0.0,
    this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'product': product?.map((x) => x.toMap())?.toList(),
      'delivery': delivery,
      'discount': discount,
      'offer': offer,
      'totalPrice': totalPrice,
      'date': date,
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map['id'],
      product: List<CartProduct>.from(
          map['product']?.map((x) => CartProduct.fromMap(x))),
      delivery: map['delivery'],
      discount: map['discount'],
      offer: map['offer'],
      totalPrice: map['totalPrice'],
      date: map['date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cart &&
        other.id == id &&
        listEquals(other.product, product) &&
        other.delivery == delivery &&
        other.discount == discount &&
        other.offer == offer &&
        other.totalPrice == totalPrice &&
        other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        product.hashCode ^
        delivery.hashCode ^
        discount.hashCode ^
        offer.hashCode ^
        totalPrice.hashCode ^
        date.hashCode;
  }

  @override
  String toString() {
    return 'Cart(id: $id, product: $product, delivery: $delivery, discount: $discount, offer: $offer, totalPrice: $totalPrice, date: $date)';
  }
}

class CartProduct {
  final String id;
  final String productName;
  final int qty;
  final double total;
  CartProduct({
    @required this.id,
    @required this.productName,
    @required this.qty,
    @required this.total,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productName': productName,
      'qty': qty,
      'total': total,
    };
  }

  factory CartProduct.fromMap(Map<String, dynamic> map) {
    return CartProduct(
      id: map['id'],
      productName: map['productName'],
      qty: map['qty'],
      total: map['total'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CartProduct.fromJson(String source) =>
      CartProduct.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartProduct &&
        other.id == id &&
        other.productName == productName &&
        other.qty == qty &&
        other.total == total;
  }

  @override
  int get hashCode {
    return id.hashCode ^ productName.hashCode ^ qty.hashCode ^ total.hashCode;
  }

  @override
  String toString() {
    return 'CartProduct(id: $id, productName: $productName, qty: $qty, total: $total)';
  }
}
