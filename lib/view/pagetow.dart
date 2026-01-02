import 'package:flutter/material.dart';

class PageTow extends StatefulWidget {
  const PageTow({super.key});

  @override
  State<PageTow> createState() => _PageTowState();
}

class _PageTowState extends State<PageTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Page Tow")));
  }
}
