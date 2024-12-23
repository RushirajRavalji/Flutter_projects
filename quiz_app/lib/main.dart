import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(QuizApp()); // Runs the QuizApp widget
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disables the debug banner in the app
      home: Quiz(), // The home screen is the Quiz widget
    );
  }
}
