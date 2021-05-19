class User {
  int id;
  String name;
  String nepali;
  bool active;
  String image;
  bool networkimage;
  int index;

  User(
      {this.id,
      this.name,
      this.nepali,
      this.active,
      this.image,
      this.networkimage,
      this.index});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nepali = json['nepali'];
    active = json['active'];
    image = json['image'];
    networkimage = json['networkimage'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nepali'] = nepali;
    data['active'] = active;
    data['image'] = image;
    data['networkimage'] = networkimage;
    data['index'] = index;
    return data;
  }
}
