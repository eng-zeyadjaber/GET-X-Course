import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';

class MyLocaleController extends GetxController {
  Locale intialLang = sharepref!.getString("lang") == null ? Get.deviceLocale! : Locale(sharepref!.getString("lang")!);
  void changeLang(String codelang) {
    Locale locale = Locale(codelang);
    Get.updateLocale(locale);
  }
}
