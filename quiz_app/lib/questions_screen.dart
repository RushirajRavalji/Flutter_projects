import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectedAnswer;

  const QuestionsScreen({Key? key, required this.onSelectedAnswer})
      : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0; // Keeps track of the current question index
  List<String> shuffledAnswers =
      []; // Shuffled answers for the current question

  @override
  void initState() {
    super.initState();
    shuffledAnswers = questions[currentQuestionIndex]
        .getShuffledAnswers(); // Initialize the shuffled answers
  }

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(
        selectedAnswer); // Notify the parent widget of the selected answer
    if (currentQuestionIndex < questions.length - 1) {
      // If more questions are left
      setState(() {
        currentQuestionIndex++; // Move to the next question
        shuffledAnswers = questions[currentQuestionIndex]
            .getShuffledAnswers(); // Shuffle the next question's answers
      });
    } else {
      print('Quiz finished!'); // When all questions are answered
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Allow horizontal scrolling
                child: Text(
                  currentQuestion.text,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
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
