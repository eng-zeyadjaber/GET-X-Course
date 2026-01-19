import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get_x/main.dart';

class ThemeGetX extends StatelessWidget {
  const ThemeGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text("What your Them", style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeTheme(Themes.customLightThem);
                  } else {
                    Get.changeTheme(Themes.customDarkThem);
                  }
                },
                child: Text("Change Them", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
