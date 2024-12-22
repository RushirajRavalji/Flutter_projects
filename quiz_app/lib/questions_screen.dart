import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionsIndex = 0;
  List<String> shuffledAnswers = [];

  @override
  void initState() {
    super.initState();
    shuffledAnswers = questons[currentQuestionsIndex].getShuffledAnswers();
  }

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    if (currentQuestionsIndex < questons.length - 1) {
      setState(() {
        currentQuestionsIndex++;
        shuffledAnswers = questons[currentQuestionsIndex].getShuffledAnswers();
      });
    } else {
      print('Quiz finished!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questons[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              ...shuffledAnswers.map((item) {
                return AnswerButton(
                  answerText: item,
                  onTap: () {
                    answerQuestion(item);
                  },
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
