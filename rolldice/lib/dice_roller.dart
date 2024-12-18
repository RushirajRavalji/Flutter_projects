import 'package:flutter/material.dart'; // Importing essential Flutter widgets
import 'dart:math'; // Importing the Random class to generate random numbers

final randomizer = Random(); // Instance of Random to generate dice rolls

class diceRoller extends StatefulWidget {
  // StatefulWidget because its state changes (dice face changes)
  const diceRoller({super.key}); // Constructor for the widget

  @override
  State<diceRoller> createState() {
    // Creates the state object for the diceRoller widget
    return _DiceRollerState(); // Returns the private state class
  }
}

class _DiceRollerState extends State<diceRoller> {
  // Private state class for the diceRoller widget
  var currentDiceRoll = 2; // Holds the current value of the dice roll (1 to 6)

  void rolldice() {
    // Method to roll the dice and change the state
    setState(() {
      // Calls setState to update the UI
      currentDiceRoll = randomizer.nextInt(6) +
          1; // Generates a random number between 1 and 6
    });
  }

  @override
  Widget build(context) {
    // Describes the part of the UI represented by this widget
    return Column(
      // Vertically arranges children widgets
      mainAxisSize:
          MainAxisSize.min, // Minimizes the size of the column to its children
      children: [
        Image.asset(
          // Displays the image of the dice
          'lib/assets/images/dice-images/dice-$currentDiceRoll.png', // Dynamically selects the dice image based on the roll
          width: 200, // Sets the width of the dice image
        ),
        const SizedBox(
          // Adds vertical space between the dice image and the button
          height: 20, // Height of the spacing
        ),
        TextButton(
          // Button that the user presses to roll the dice
          onPressed:
              rolldice, // Calls the rolldice() method when the button is pressed
          style: TextButton.styleFrom(
              // Customizes the button's appearance
              padding: EdgeInsets.all(20), // Padding around the button's text
              foregroundColor: Colors.black, // Sets the text color to black
              textStyle: TextStyle(
                  fontSize: 28) // Sets the font size of the button's text
              ),
          child: Text("Roll"), // Text displayed on the button
        )
      ],
    );
  }
}
