import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: Text("Alhilal", style: TextStyle(fontSize: 30)),
                      padding: EdgeInsets.symmetric(
                        horizontal: 138,
                        vertical: 30,
                      ),
                      height: 100,
                      width: 500,
                    ),
                    enterBottomSheetDuration: Duration(seconds: 1),
                    exitBottomSheetDuration: Duration(seconds: 1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 5),
                      borderRadius: BorderRadiusGeometry.circular(30),
                    ),
                    isDismissible: false,
                  );
                },
                child: Text("Show Best Team In The World"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
