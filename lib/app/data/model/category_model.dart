import 'dart:convert';

import 'package:flutter/foundation.dart';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));
String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
//icon is not need
  final String id;
  final String name;
  final String nepali;
  final bool active;
  bool isSelected;
  final String image;
  final bool networkimage;

  Category({
    this.id,
    @required this.name,
    @required this.active,
    this.isSelected = false,
    @required this.nepali,
    @required this.image,
    this.networkimage = true,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nepali': nepali,
      'active': active,
      'image': image,
      'networkimage': networkimage,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      name: map['name'],
      nepali: map['nepali'],
      active: map['active'],
      image: map['image'],
      networkimage: map['networkimage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));
}
