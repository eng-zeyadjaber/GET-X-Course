// import 'package:get/get.dart';

// class Sumcontroller extends GetxController {
//   var count1 = 0;
//   var count2 = 0;
//   void incrementOne() {
//     count1++;
//     update();
//   }

//   void incrementTow() {
//     count2++;
//     update();
//   }

//   void decrementOne() {
//     count1--;
//     update();
//   }

//   void decrementTow() {
//     count2--;
//     update();
//   }

//   int get sum => count1 + count2;
// }
////////////////////////////////////////////////////////////////
import 'package:get/get.dart';

class Sumcontroller extends GetxController {
  var count1 = 0.obs;
  var count2 = 0.obs;
  void incrementOne() {
    count1++;
    update();
  }

  void incrementTow() {
    count2++;
    update();
  }

  void decrementOne() {
    count1--;
    update();
  }

  void decrementTow() {
    count2--;
    update();
  }

  int get sum => count1.value + count2.value;
}