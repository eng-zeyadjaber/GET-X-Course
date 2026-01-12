import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:get_x/main.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  sharepref!.clear();
                  Get.offAllNamed("/");
                },
                child: Text("Sign Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
