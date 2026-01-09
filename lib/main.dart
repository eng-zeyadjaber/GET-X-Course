import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/bindings.dart';
import 'package:get_x/view/counter.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/pagefive.dart';
import 'package:get_x/view/pagefour.dart';
import 'package:get_x/view/pageone.dart';
import 'package:get_x/view/pagethree.dart';
import 'package:get_x/view/pagetow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
      initialBinding:
          MyBindings(), // in all app use that for save input in memory
      getPages: [
        GetPage(name: '/', page: () => Home(), binding: MyBindings()),
        GetPage(name: "/pageone", page: () => PageOne()),
        GetPage(name: "/pagetow", page: () => PageTow()),
        GetPage(name: "/pagethree", page: () => Pagethree()),
        GetPage(name: "/pagefour", page: () => Pagefour()),
        GetPage(name: "/pagefive", page: () => Pagefive()),
      ],
    );
  }
}
