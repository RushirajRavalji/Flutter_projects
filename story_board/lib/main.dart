import 'package:flutter/material.dart';
import 'package:namer_app/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Layout(), // Ensure Layout is inside MaterialApp
    );
  }
}
