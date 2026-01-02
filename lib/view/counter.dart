import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/countController.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CounterPage")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Countcontroller>(
              init: Countcontroller(),
              builder: (contrller) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {
                        contrller.increment();
                      },
                      icon: Icon(Icons.add, size: 40),
                    ),
                  ),
                  Center(
                    child: Text(
                      "${contrller.counter}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        contrller.decrement();
                      },
                      icon: Icon(Icons.remove, size: 40),
                    ),
                  ),
                ],
              ),
            ),

            ///////////////////////////////////////////////////////////////////////////////////////////////////
            // GetX<Countcontroller>(
            //   //تستخدم بحذف الابديت من صفحة الكنترولر
            //   init: Countcontroller(),
            //   builder: (contrller) => Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         child: IconButton(
            //           onPressed: () {
            //             contrller.xdecrement();
            //           },
            //           icon: Icon(Icons.add, size: 40),
            //         ),
            //       ),
            //       Center(
            //         child: Text(
            //           "${contrller.counter}",
            //           style: TextStyle(fontSize: 30),
            //         ),
            //       ),
            //       Container(
            //         child: IconButton(
            //           onPressed: () {
            //             contrller.xdecrement();
            //           },
            //           icon: Icon(Icons.remove, size: 40),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
