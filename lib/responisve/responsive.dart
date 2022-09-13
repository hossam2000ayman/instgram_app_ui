import 'package:flutter/material.dart';
import 'package:instgram_app/responisve/mobile.dart';
import 'package:instgram_app/responisve/web.dart';

class Responsive extends StatefulWidget {
  final mobileScreen;
  final webScreen;
  const Responsive(
      {super.key, required this.mobileScreen, required this.webScreen});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints) {
        if (BoxConstraints.maxWidth > 600) {
          return widget.webScreen;
        } else {
          return widget.mobileScreen;
        }
      },
    );
  }
}
