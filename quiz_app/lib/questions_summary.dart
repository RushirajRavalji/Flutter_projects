import 'package:flutter/cupertino.dart';


class QuestionsSummary extends StatelessWidget {
  final List<Map<String, dynamic>>
      summaryData; // Summary data containing question, user answer, and correct answer

  QuestionsSummary({Key? key, required this.summaryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((question) {
        // Iterate through summary data
        return Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
          child: Row(
            children: [
              Text(
                question['question_index'].toString(), // Display question index
                style: TextStyle(fontWeight: FontWeight.bold), // Bold text
              ),
              SizedBox(width: 8), // Spacing between elements
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start
                children: [
                  Text(question['questions']
                      .toString()), // Display question text
                  SizedBox(height: 5), // Add spacing
                  Text(
                      'Your Answer: ${question['user_answers']}'), // Display user's answer
                  Text(
                      'Correct Answer: ${question['correct_answers']}'), // Display correct answer
                ],
              )
            ],
          ),
        );
      }).toList(), // Convert iterable to a list of widgets
    );
  }
}
