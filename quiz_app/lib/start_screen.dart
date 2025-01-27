// Import the material package, which contains the material design widgets used in Flutter.
import 'package:flutter/material.dart';

// Define the StartScreen class as a StatelessWidget. This widget will be used
// as the starting screen for the quiz.
class StartScreen extends StatelessWidget {
  // Constructor for StartScreen. It takes `startQuiz`, a callback function,
  // and an optional `key` parameter. The `startQuiz` function will be executed
  // when the user presses the button to start the quiz.
  const StartScreen(this.startQuiz, {Key? key});

  // Declare a final variable `startQuiz` which holds a function that doesn't
  // return anything and doesn't take any parameters (void Function()).
  final void Function() startQuiz;

  // The build method describes the UI structure for the StartScreen widget.
  @override
  Widget build(BuildContext context) {
    // Return a Center widget to center the child widgets on the screen.
    return Center(
      child: Column(
        // Align the children vertically in the center of the screen.
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display an image from the assets (in this case, a logo for the quiz).
          Image.asset(
            'assets/images/quiz-logo.png', // Path to the image file.
            width: 250, // Set the width of the image.
          ),
          // Add some space between the image and the text (80 pixels).
          SizedBox(height: 80),
          // Display a text message ("Let's Learn Flutter") below the image.
          Text(
            "Let's Learn Flutter",
            style: TextStyle(
              color: Color.fromARGB(255, 33, 33, 33), // Set the text color.
              fontSize: 16, // Set the font size.
            ),
          ),
          // Add some space between the text and the button (30 pixels).
          SizedBox(height: 30),
          // Create an outlined button with an icon and label.
          OutlinedButton.icon(
            // Define the action for the button. The startQuiz function
            // will be called when the button is pressed.
            onPressed: startQuiz,
            // Style the button with a purple accent color for the text and icon.
            style:
                OutlinedButton.styleFrom(foregroundColor: Colors.purpleAccent),
            // Set the icon that will appear on the button (right arrow).
            icon: Icon(Icons.arrow_right),
            // Set the label of the button ("Let's Go").
            label: Text("Let's Go"),
          )
        ],
      ),
    );
  }
}
