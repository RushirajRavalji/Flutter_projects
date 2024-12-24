import 'package:flutter/material.dart';

// The initial screen of the app, which allows the user to start the quiz.
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);

  final void Function() startQuiz; // Callback function to start the quiz

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: startQuiz, // Trigger the startQuiz callback when pressed
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: 12.0, horizontal: 24.0), // Button padding
        ),
        child: Text(
          'Start Quiz', // Button text
          style: TextStyle(fontSize: 18), // Button text styling
        ),
      ),
    );
  }
}
