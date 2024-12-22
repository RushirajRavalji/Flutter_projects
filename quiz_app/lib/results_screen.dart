import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you answered x out of y answers.'),
            SizedBox(
              height: 30,
            ),
            Text('List of answers and questions..'),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Restart quiz'))
          ],
        ),
      ),
    );
  }
}