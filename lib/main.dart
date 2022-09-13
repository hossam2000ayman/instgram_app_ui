import 'package:flutter/material.dart';
import 'package:instgram_app/responisve/mobile.dart';
import 'package:instgram_app/responisve/responsive.dart';
import 'package:instgram_app/responisve/web.dart';
import 'package:instgram_app/screens/register.dart';
import 'package:instgram_app/screens/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Login(),
      // home: Responsive(mobileScreen: MobileScreen(), webScreen: WebScreen()),
    );
  }
}
