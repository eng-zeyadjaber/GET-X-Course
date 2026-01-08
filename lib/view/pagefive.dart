import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get_x/controller/countController.dart';

class Pagefive extends StatelessWidget {
  const Pagefive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Five")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GetBuilder<Countcontroller>(
                builder: (controller) => Text(
                  "${controller.counter}",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
