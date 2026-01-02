import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/view/counter.dart';
import 'package:get_x/view/home.dart';
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
      home: Counter(),
      getPages: [
        GetPage(name: "/pageone", page: () => PageOne()),
        GetPage(name: "/pagetow", page: () => PageTow()),
        GetPage(name: "/pagethree", page: () => PageThree()),
      ],
    );
  }
}
