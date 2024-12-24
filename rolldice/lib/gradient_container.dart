import 'package:flutter/material.dart'; // Importing Flutter's core UI components
import 'package:rolldice/dice_roller.dart'; // Importing the diceRoller widget from roll_dice.dart

class GradiendContainer extends StatelessWidget {
  // Stateless widget because it does not change
  const GradiendContainer({super.key}); // Constructor for the widget

  @override
  Widget build(context) {
    // Describes the part of the UI represented by this widget
    return Container(
      // Container to hold the gradient background
      decoration: BoxDecoration(
        // Applies decoration to the container
        gradient: LinearGradient(
          // Linear gradient for background color transition
          colors: [
            // Colors for the gradient
            Color.fromARGB(255, 241, 188, 109), // Orange-yellow color
            Color.fromARGB(255, 241, 234, 109), // Light yellow color
          ],
          begin: Alignment.topLeft, // Starting point of the gradient
          end: Alignment.bottomRight, // Ending point of the gradient
        ),
      ),
      child: Center(
        // Centers the child widget within the container
        child: diceRoller(), // Embeds the diceRoller widget as a child
      ),
    );
  }
}
