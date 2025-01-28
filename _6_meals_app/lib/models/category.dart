import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.id,
      required this.title,
      this.color = Colors.black});
  //this are the catogries, and if no colors are added or specified then black color will be implimented as it is default.
  final String id;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
