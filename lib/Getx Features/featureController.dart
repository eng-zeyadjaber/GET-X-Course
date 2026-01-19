import 'package:get/get.dart';

class Featurecontroller extends GetxController {
  String? preRoute;
  String? routeCurrent;
  String? name;
  String? age;
  @override
  void onInit() {
    super.onInit();
    preRoute = Get.routing.previous;
    routeCurrent = Get.routing.current;
  }

  @override
  void onReady() {
    if (Get.arguments != null) {
      name = Get.arguments['name'];
      age = Get.arguments['age'];
    }
    super.onInit();
  }
}
