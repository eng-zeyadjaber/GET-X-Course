import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get_x/locale/local_controller.dart';

class Homelocal extends StatelessWidget {
  const Homelocal({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerlang = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("1".tr)),
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
                  controllerlang.changeLang("ar");
                },
                child: Text("2".tr),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controllerlang.changeLang("en");
                },
                child: Text("3".tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
