import 'package:flutter/material.dart';
import 'package:instgram_app/shared/colors.dart';

class Add_Post extends StatefulWidget {
  const Add_Post({super.key});

  @override
  State<Add_Post> createState() => _Add_PostState();
}

class _Add_PostState extends State<Add_Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: Center(
        child: IconButton(
          icon: Icon(Icons.upload),
          iconSize: 90,
          onPressed: () {},
        ),
      ),
    );
  }
}
