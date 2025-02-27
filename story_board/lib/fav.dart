import 'package:flutter/material.dart';
import 'package:namer_app/stories/story1.dart';

class Fav extends StatelessWidget {
  const Fav({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        InkWell(
          child: Container(
            height: 150,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: const Text(
              "The Brave Little Squirrel 🐿️",
              style: TextStyle(fontSize: 20, color: Color(0xffF2F6D0)),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Story1()),
            );
          },
        ),
      ],
    );
  }
}
