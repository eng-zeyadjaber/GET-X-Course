import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:get_x/services/settingservices.dart';

class Homeservices extends GetView<SettingServices> {
  const Homeservices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("services")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingServices>(
              builder: (c) => Center(
                child: Text("${c.counter}", style: TextStyle(fontSize: 40)),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                controller.increase();
              },
              child: Text("Counter increase"),
            ),
            MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                controller.sharedPref.clear();
              },
              child: Text("Clear Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
