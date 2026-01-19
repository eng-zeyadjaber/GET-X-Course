import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get_x/Getx%20Features/featureController.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Featurecontroller>();
    return Scaffold(
      appBar: AppBar(title: Text("Getx Features")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${controller.routeCurrent}"),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed(
                    "/pagetow",
                    arguments: {"name": "Abo Alzeed", "age": "24"},
                  );
                },
                child: Text("Go TO Features2 Page"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.snackbar(
                    "Alhilal",
                    "Champion of the world",
                    backgroundColor: Colors.blue,
                    colorText: Colors.white,
                  );
                },
                child: Text("Show SnackBar"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print(Get.isSnackbarOpen);
                },
                child: Text("Check"),
              ),
            ),
            Container(height: 5),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  // print(GetPlatform.isAndroid);
                  // print(GetPlatform.isMobile);
                  // print(GetPlatform.isIOS);
                  // print(GetPlatform.isMacOS);
                  // print(Get.width);
                  // print(Get.height);
                  // print(context.isLandscape);
                  // print(context.isPortrait);
                },
                child: Text("TEST"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
