import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer)
      onSelectedAnswer; // Callback function to handle answer selection

  const QuestionsScreen({Key? key, required this.onSelectedAnswer})
      : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0; // Tracks the index of the current question
  List<String> shuffledAnswers =
      []; // Holds shuffled answers for the current question

  @override
  void initState() {
    super.initState();
    shuffledAnswers = questions[currentQuestionIndex]
        .getShuffledAnswers(); // Initialize shuffled answers for the first question
  }

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(
        selectedAnswer); // Pass selected answer to the parent widget
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++; // Move to the next question
        shuffledAnswers = questions[currentQuestionIndex]
            .getShuffledAnswers(); // Shuffle answers for the next question
      });
    } else {
      print('Quiz finished!'); // Log when all questions are answered
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion =
        questions[currentQuestionIndex]; // Get the current question

    return SizedBox(
      width: double.infinity, // Take full screen width
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center elements vertically
            crossAxisAlignment: CrossAxisAlignment
                .stretch, // Stretch elements to fill horizontal space
            children: [
              SingleChildScrollView(
                scrollDirection:
                    Axis.horizontal, // Allow horizontal scrolling if needed
                child: Text(
                  currentQuestion.text, // Display question text
                  style: TextStyle(fontSize: 20), // Set font size
                  textAlign: TextAlign.center, // Center align text
                ),
              ),
              SizedBox(height: 30), // Add spacing
              ...shuffledAnswers.map((item) {
                // Create answer buttons dynamically
                return AnswerButton(
                  answerText: item, // Set the button text to the answer
                  onTap: () => answerQuestion(
                      item), // Pass selected answer to the handler
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
