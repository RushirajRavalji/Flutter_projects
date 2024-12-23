import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, dynamic>> getSummaryData() {
    final List<Map<String, dynamic>> Summary = [];
    print("Hellow");
    for (var i = 0; i < chosenAnswers.length; i++) {
      Summary.add({
        'question_index': i,
        'questions': questons[i].text,
        'correct_answers': questons[i].answers[0],
        'user_answers': chosenAnswers[i],
      });
    }

    return Summary;
  }

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
            QuestionsSummary(summaryData: getSummaryData(),),
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
