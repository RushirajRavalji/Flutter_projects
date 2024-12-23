import 'package:flutter/cupertino.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, dynamic>> summaryData;

  QuestionsSummary({Key? key, required this.summaryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((question) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Text(
                question['question_index']
                    .toString(), // Display the question index
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      question['questions'].toString()), // Display the question
                  SizedBox(height: 5),
                  Text(
                      'Your Answer: ${question['user_answers']}'), // Display the user's answer
                  Text(
                      'Correct Answer: ${question['correct_answers']}'), // Display the correct answer
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
