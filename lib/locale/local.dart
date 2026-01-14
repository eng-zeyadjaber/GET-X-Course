import 'package:get/get.dart';

class MyLocal implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar": {"1": "الصفحة الرئيسية", "2": "عربي", "3": "إنجليزي"},
    "en": {"1": "Home Page", "2": "Arabic", "3": "English"},
  };
}
