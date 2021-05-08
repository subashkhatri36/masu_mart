import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String fullname;
  final String mobile;
  final String email;
  final String password;
  final String address;
  final bool login;
  final String userType;
  final String regDate;
  final double log;
  final double lat;
  final bool phoneverified;
  final bool emailverified;
  final bool paymentEnable;
  User({
    @required this.id,
    @required this.fullname,
    @required this.mobile,
    @required this.email,
    @required this.password,
    @required this.address,
    @required this.login,
    @required this.userType,
    @required this.regDate,
    @required this.log,
    @required this.lat,
    @required this.phoneverified,
    @required this.emailverified,
    @required this.paymentEnable,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullname': fullname,
      'mobile': mobile,
      'email': email,
      'password': password,
      'address': address,
      'login': login,
      'userType': userType,
      'regDate': regDate,
      'log': log,
      'lat': lat,
      'phoneverified': phoneverified,
      'emailverified': emailverified,
      'paymentEnable': paymentEnable,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      fullname: map['fullname'],
      mobile: map['mobile'],
      email: map['email'],
      password: map['password'],
      address: map['address'],
      login: map['login'],
      userType: map['userType'],
      regDate: map['regDate'],
      log: map['log'],
      lat: map['lat'],
      phoneverified: map['phoneverified'],
      emailverified: map['emailverified'],
      paymentEnable: map['paymentEnable'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.fullname == fullname &&
        other.mobile == mobile &&
        other.email == email &&
        other.password == password &&
        other.address == address &&
        other.login == login &&
        other.userType == userType &&
        other.regDate == regDate &&
        other.log == log &&
        other.lat == lat &&
        other.phoneverified == phoneverified &&
        other.emailverified == emailverified &&
        other.paymentEnable == paymentEnable;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        fullname.hashCode ^
        mobile.hashCode ^
        email.hashCode ^
        password.hashCode ^
        address.hashCode ^
        login.hashCode ^
        userType.hashCode ^
        regDate.hashCode ^
        log.hashCode ^
        lat.hashCode ^
        phoneverified.hashCode ^
        emailverified.hashCode ^
        paymentEnable.hashCode;
  }

  @override
  String toString() {
    return 'User(id: $id, fullname: $fullname, mobile: $mobile, email: $email, password: $password, address: $address, login: $login, userType: $userType, regDate: $regDate, log: $log, lat: $lat, phoneverified: $phoneverified, emailverified: $emailverified, paymentEnable: $paymentEnable)';
  }
}
