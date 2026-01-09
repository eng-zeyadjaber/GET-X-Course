import 'package:get/get.dart';

class Countcontroller extends GetxController {
  // for GetBuilder
  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  ///////////////////////////////////////////////////////////////////

  // for GetX
  RxInt xcounter = 0.obs;
  void xincrement() {
    counter++;
  }

  void xdecrement() {
    counter--;
  }

  @override
  void onInit() {
    // like initstate
    print("init Countcontroller");
    super.onInit();
  }

  @override
  void onReady() {
    // for build
    print("fech data");
    print("Ready Countcontroller");
    super.onReady();
  }

  @override
  void onClose() {
    // like dispos
    print("Close Countcontroller");
    super.onClose();
  }
}
