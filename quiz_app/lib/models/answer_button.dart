import 'package:flutter/material.dart';

// A custom button widget to represent an answer option in the quiz.
class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText, // The text to display on the button
    required this.onTap, // Callback to handle button press
  });

  final String answerText; // Text of the answer
  final void Function() onTap; // Function to execute on button press

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, // Trigger the onTap callback when the button is pressed
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 12.0), // Padding inside the button
        child: Text(
          answerText, // Display the answer text on the button
          textAlign: TextAlign.center, // Center-align the text
          overflow: TextOverflow.ellipsis, // Truncate text if it overflows
          maxLines: 1, // Limit the text to a single line
        ),
      ),
    );
  }
}
