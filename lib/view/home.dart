import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/view/pageone.dart';
import 'package:get_x/view/pagethree.dart';
import 'package:get_x/view/pagetow.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  // Get.to(PageOne()); //push
                  // Get.off(PageOne());//pushReplacement تبديل مع الصفحة المنقول منها
                  // Get.offAll(PageOne());//pushAndRemoveAntil يفتح الصفحة مع حذف كل الصفحات المفتوحة سابقا
                  // Get.back();// maybePop في حال وجود امكانية للرجوع ترجع
                  Get.offAllNamed("/pageone");
                },
                child: Text("Page One"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("/pagetow"); // بستخدام الروت الي فصفحة المين
                },
                child: Text("Page Tow"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.offNamed("/pagethree");
                },
                child: Text("Page Three"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
