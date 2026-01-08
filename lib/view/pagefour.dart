import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get_x/controller/countController.dart';

class Pagefour extends StatefulWidget {
  const Pagefour({super.key});

  @override
  State<Pagefour> createState() => _PagefourState();
}

class _PagefourState extends State<Pagefour> {
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
          ],
        ),
      ),
    );
  }
}
