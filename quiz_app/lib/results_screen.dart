import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

// A screen that displays the quiz results and a summary of the user's answers.
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    Key? key,
    required this.chosenAnswers, // List of answers chosen by the user
    required this.onRestart, // Callback to restart the quiz
  }) : super(key: key);

  final List<String> chosenAnswers;
  final VoidCallback onRestart;

  // Method to prepare a summary of the user's answers compared to correct answers.
  List<Map<String, dynamic>> getSummaryData() {
    final List<Map<String, dynamic>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i + 1, // Add 1 to make it 1-based indexing
        'questions': questions[i].text, // The question text
        'correct_answers':
            questions[i].answers[0], // First answer is assumed to be correct
        'user_answers': chosenAnswers[i], // User's selected answer
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Occupy full screen width
      child: Padding(
        padding: const EdgeInsets.all(40.0), // Add consistent padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            // Display the total correct answers compared to total questions
            Text('You answered x out of y correctly.'),
            SizedBox(height: 30), // Add vertical space
            QuestionsSummary(
                summaryData:
                    getSummaryData()), // Display the question summary widget
            SizedBox(height: 30), // Add vertical space
            TextButton(
              onPressed: onRestart, // Call restart function on button press
              child: Text('Restart quiz'), // Button label
            ),
          ],
        ),
      ),
    );
  }
}
