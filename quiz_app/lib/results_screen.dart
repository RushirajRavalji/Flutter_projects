import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {Key? key, required this.chosenAnswers, required this.onRestart})
      : super(key: key);

  final List<String> chosenAnswers;
  final VoidCallback onRestart; // Add a function type to restart the quiz

  List<Map<String, dynamic>> getSummaryData() {
    final List<Map<String, dynamic>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i + 1,
        'questions': questions[i].text,
        'correct_answers':
            questions[i].answers[0], // Assuming first answer is correct
        'user_answers': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered x out of y correctly.'), // You can customize the result message here
            SizedBox(height: 30),
            QuestionsSummary(
                summaryData: getSummaryData()), // Show the summary of answers
            SizedBox(height: 30),
            TextButton(
              onPressed:
                  onRestart, // Call the onRestart function to restart the quiz
              child: Text('Restart quiz'),
            )
          ],
        ),
      ),
    );
  }
}
