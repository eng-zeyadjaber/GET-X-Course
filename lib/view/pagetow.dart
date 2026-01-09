import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';
import 'package:get_x/controller/countController.dart';

class PageTow extends StatelessWidget {
  PageTow({super.key});
  // final c = Get.lazyPut(() => Countcontroller(), fenix: true ); // fenix use for not delete page in memory
  final Countcontroller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CounterPage")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: Icon(Icons.add, size: 40),
                  ),
                ),
                Center(
                  child: GetBuilder<Countcontroller>(
                    builder: (controller) => Text(
                      "${controller.counter}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: Icon(Icons.remove, size: 40),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
