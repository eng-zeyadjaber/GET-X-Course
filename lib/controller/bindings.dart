import 'package:get/get.dart';
import 'package:get_x/controller/countController.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Countcontroller(), fenix: true);
    // Get.put(Countcontroller());
  }
}
