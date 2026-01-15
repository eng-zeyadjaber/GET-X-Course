import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGetX extends StatelessWidget {
  const DialogGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.defaultDialog(
                    title: "Alhilal",
                    // middleText: "Best Team In The World",
                    content: Column(
                      children: [
                        Text("Enter Best Team In The World"),
                        TextFormField(),
                        // Text(
                        //   "Best Team In The World",
                        //   style: TextStyle(
                        //     color: Colors.blueGrey,
                        //     fontSize: 20,
                        //   ),
                        // ),
                      ],
                    ),
                    titleStyle: TextStyle(color: Colors.blue, fontSize: 40),
                    // middleTextStyle: TextStyle(
                    //   color: Colors.blueGrey,
                    //   fontSize: 20,
                    // ),
                    textCancel: "Cancel",
                    // cancel: InkWell(
                    //   child: Text(
                    //     "Cancel",
                    //     style: TextStyle(color: Colors.blueGrey),
                    //   ),
                    //   onTap: () {
                    //     print("Cancel");
                    //   },
                    // ),
                    textConfirm: "OK",
                    onConfirm: () {
                      print("Confirm");
                    },
                    actions: [
                      MaterialButton(onPressed: () {}, child: Text("OK")),
                      MaterialButton(onPressed: () {}, child: Text("Cancel")),
                    ],
                  );
                },
                child: Text("Show Dialog"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
