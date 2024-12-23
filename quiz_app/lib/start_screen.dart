import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', // Logo image for the quiz
            width: 250,
          ),
          SizedBox(height: 80),
          Text(
            "Let's Learn Flutter",
            style: TextStyle(
              color: Color.fromARGB(255, 33, 33, 33),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz, // Start the quiz when button is pressed
            style:
                OutlinedButton.styleFrom(foregroundColor: Colors.purpleAccent),
            icon: Icon(Icons.arrow_right),
            label: Text("Let's Go"),
          )
        ],
      ),
    );
  }
}
