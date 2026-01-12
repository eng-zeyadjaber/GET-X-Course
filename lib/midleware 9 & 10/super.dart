import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:get_x/main.dart';

class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Super")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Super", style: TextStyle(fontSize: 50))),
          ],
        ),
      ),
    );
  }
}
