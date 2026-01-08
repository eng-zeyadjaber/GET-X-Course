import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:get_x/controller/sumController.dart';

class Pagethree extends StatelessWidget {
  Pagethree({super.key});
  final Sumcontroller controller = Get.put(Sumcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One")),
      body: ListView(
        children: [
          Center(
            child: GetX<Sumcontroller>(
              builder: (controller) {
                print("count 1 rebuild");
                return Text(
                  "${controller.count1.value}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          Center(
            child: GetX<Sumcontroller>(
              builder: (controller) {
                print("count 2 rebuild");
                return Text(
                  "${controller.count2.value}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          Center(
            child: GetX<Sumcontroller>(
              builder: (controller) {
                print("sum rebuild");
                return Text(
                  "${controller.sum}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          MaterialButton(
            onPressed: () {
              controller.incrementOne();
            },
            child: Text("Add One"),
          ),
          MaterialButton(
            onPressed: () {
              controller.incrementTow();
            },
            child: Text("Add Tow"),
          ),
        ],
      ),
    );
  }
}