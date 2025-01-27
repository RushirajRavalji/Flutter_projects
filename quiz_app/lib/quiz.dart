import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // Tracks selected answers
  var activeScreen = 'start-screen'; // Tracks the active screen

  void switchScreen() {
    setState(() {
      selectedAnswers = []; // Reset answers when switching
      activeScreen = 'questions-screen'; // Set active screen to question screen
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer); // Add selected answer
      if (selectedAnswers.length == questions.length) {
        activeScreen =
            'results-screen'; // Navigate to results screen after last question
      }
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = []; // Clear previous answers
      activeScreen = 'start-screen'; // Reset to start screen
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen); // Default to start screen
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
          onSelectedAnswer: chooseAnswer); // Display question screen
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers,
          onRestart: restartQuiz); // Display results screen
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 199, 246, 226),
                Color.fromARGB(255, 178, 235, 217),
              ],
              begin: Alignment.topCenter, // Gradient starts at the top
              end: Alignment.bottomCenter, // Gradient ends at the bottom
            ),
          ),
          child: screenWidget, // Display active screen
        ),
      ),
    );
  }
}
