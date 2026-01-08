import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/controller/sumController.dart';

class PageOne extends StatelessWidget {
  PageOne({super.key});
  final Sumcontroller controller = Get.put(Sumcontroller());
  // Sumcontroller extcontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One")),
      body: ListView(
        children: [
          Center(
            child: GetBuilder<Sumcontroller>(
              builder: (controller) {
                print("count 1 rebuild");
                return Text(
                  "${controller.count1}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          Center(
            child: GetBuilder<Sumcontroller>(
              builder: (controller) {
                print("count 2 rebuild");
                return Text(
                  "${controller.count2}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          Center(
            child: GetBuilder<Sumcontroller>(
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