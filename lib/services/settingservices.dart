import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPref;
  RxInt counter = 0.obs;
  Future<SettingServices> init() async {
    //start services
    sharedPref = await SharedPreferences.getInstance();
    counter.value = sharedPref.getInt("counter") ?? 0;
    // End
    return this;
  }

  increase() {
    counter.value++;
    sharedPref.setInt("counter", counter.value);
  }
}
