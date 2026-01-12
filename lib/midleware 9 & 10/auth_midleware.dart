import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_x/main.dart';

class AuthMidleware extends GetMiddleware {
  @override
  int? get Priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (sharepref!.getString("rule") == "user")
      return RouteSettings(name: "/home");
    if (sharepref!.getString("rule") == "admin")
      return RouteSettings(name: "/admin");
  }
}
