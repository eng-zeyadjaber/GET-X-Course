import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_x/main.dart';

class SuperMidleware extends GetMiddleware {
  @override
  int? get Priority => 2;
  bool myvar = true;
  @override
  RouteSettings? redirect(String? route) {
    if (myvar == true) return RouteSettings(name: "/super");
  }
}
