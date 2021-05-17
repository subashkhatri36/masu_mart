import 'package:flutter/foundation.dart';

class Category {
  final String id;
  final String icon;
  final String name;
  final String nepali;
  final bool active;
  bool isSelected;
  final bool image;
  final bool networkimage;

  Category({
    this.id,
    @required this.icon,
    @required this.name,
    @required this.active,
    this.isSelected = false,
    @required this.nepali,
    @required this.image,
    this.networkimage = true,
  });
}
