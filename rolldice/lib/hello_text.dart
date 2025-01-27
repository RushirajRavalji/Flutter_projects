import 'package:flutter/material.dart';

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(context) {
    return Text(
      "text",
      style: TextStyle(
        color: Colors.black,
        fontSize: 46,
      ),
    );
  }
}
