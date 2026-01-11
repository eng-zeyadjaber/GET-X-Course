import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_x/main.dart';

class AuthMidleware extends GetMiddleware {
  RouteSettings? redirect(String? route) {
    if (sharepref!.getString("id") != null) return RouteSettings(name: "/home");
  }
}
