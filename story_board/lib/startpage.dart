import 'package:flutter/material.dart';
import 'package:namer_app/stories/story1.dart';
import 'package:namer_app/stories/story2.dart';
import 'package:namer_app/stories/story3.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        _storyCard(context, "The Brave Little Squirrel 🐿️", Story1()),
        _storyCard(context, "The Clever Rabbit 🐇", Story2()),
        _storyCard(context, "The Honest Woodcutter 🪓", Story3()),
      ],
    );
  }

  Widget _storyCard(BuildContext context, String title, Widget page) {
    return InkWell(
      child: Container(
        height: 150,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black, width: 3),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, color: Color(0xffF2F6D0)),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page), // Use 'page' here!
        );
      },
    );
  }
}
