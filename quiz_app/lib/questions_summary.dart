import 'package:flutter/cupertino.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, dynamic>> summaryData;

  QuestionsSummary({super.key, required this.summaryData});


  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data = summaryData;

    return Column(
      children: data.map((question) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(((question['question_index'].toString()))),
              Column(
                children: [
                  Text(question['questions'].toString()),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(question['user_answers'].toString()),
                  Text(question['correct_answers'].toString()),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
