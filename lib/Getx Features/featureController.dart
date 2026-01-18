import 'package:get/get.dart';

class Featurecontroller extends GetxController {
  String? preRoute;
  String? routeCurrent;
  String? name;
  String? age;
  @override
  void onInit() {
    preRoute = Get.previousRoute;
    routeCurrent = Get.routing.current;
    name = Get.arguments['name'];
    age = Get.arguments['age'];
    super.onInit();
  }
}
