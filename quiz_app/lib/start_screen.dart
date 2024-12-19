import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Lets Learn Flutter",
              style: TextStyle(
                color: Color.fromARGB(255, 33, 33, 33),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.purpleAccent),
              icon: Icon(Icons.arrow_right),
              label: const Text("Lets Goo"),
            )
          ],
        ),
      ),
    );
  }
}
