import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/BottomSheet/bottomSheet.dart';
import 'package:get_x/Dialog/Dialog.dart';
import 'package:get_x/Getx%20Features/Features.dart';
import 'package:get_x/Getx%20Features/features2.dart';
import 'package:get_x/Snackbar/snackbar.dart';
import 'package:get_x/controller/bindings.dart';
import 'package:get_x/locale/homeLocal.dart';
import 'package:get_x/locale/local.dart';
import 'package:get_x/locale/local_controller.dart';
import 'package:get_x/midleware%209%20&%2010/admin.dart';
import 'package:get_x/midleware%209%20&%2010/auth_midleware.dart';
import 'package:get_x/midleware%209%20&%2010/home9&10.dart';
import 'package:get_x/midleware%209%20&%2010/login.dart';
import 'package:get_x/midleware%209%20&%2010/super.dart';
import 'package:get_x/midleware%209%20&%2010/super_midleware.dart';
import 'package:get_x/services/homeServices.dart';
import 'package:get_x/services/settingservices.dart';
import 'package:get_x/view/counter.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/pagefive.dart';
import 'package:get_x/view/pagefour.dart';
import 'package:get_x/view/pageone.dart';
import 'package:get_x/view/pagethree.dart';
import 'package:get_x/view/pagetow.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharepref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  sharepref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

Future initalServices() async {
  await Get.putAsync(() => SettingServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      title: 'GetX Course',
      theme: ThemeData(primarySwatch: Colors.blue),
      locale: controller.intialLang,
      // translations: MyLocal(),
      initialRoute: "/",
      // initialBinding:
      //     MyBindings(), // in all app use that for save input in memory
      getPages: [
        GetPage(name: "/", page: () => Features()),
        GetPage(name: "/pagetow", page: () => Features2()),
        // GetPage(name: "/", page: () => Bottomsheet()),
        // GetPage(name: "/", page: () => DialogGetX()),
        // GetPage(name: "/", page: () => Homelocal()),
        // GetPage(name: "/homeServices", page: () => Homeservices()),
        //   GetPage(
        //     name: "/",
        //     page: () => Homeservices(),
        // middlewares: [AuthMidleware(), SuperMidleware()],
        // ),
        // GetPage(name: "/home", page: () => Home9()),
        // GetPage(name: "/admin", page: () => Admin()),
        // GetPage(name: "/super", page: () => Super()),
        // GetPage(name: '/', page: () => Home(), binding: MyBindings()),
        // GetPage(name: "/pageone", page: () => PageOne()),
        // GetPage(name: "/pagetow", page: () => PageTow()),
        // GetPage(name: "/pagethree", page: () => Pagethree()),
        // GetPage(name: "/pagefour", page: () => Pagefour()),
        // GetPage(name: "/pagefive", page: () => Pagefive()),
      ],
    );
  }
}
