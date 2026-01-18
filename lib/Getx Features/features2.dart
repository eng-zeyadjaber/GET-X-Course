import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get_x/Getx%20Features/Features.dart';
import 'package:get_x/Getx%20Features/featureController.dart';

class Features2 extends StatelessWidget {
  const Features2({super.key});

  @override
  Widget build(BuildContext context) {
    Featurecontroller controller = Get.put(Featurecontroller());
    return Scaffold(
      appBar: AppBar(title: Text("Getx Features")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${controller.preRoute}"),
            Text("${controller.routeCurrent}"),
            Text("${controller.name}"),
            Text("${controller.age}"),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.off(Features());
                },
                child: Text("Go TO Features Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
