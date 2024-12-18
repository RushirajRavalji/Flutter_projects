import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});

  @override
  State<diceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<diceRoller> {
  var currentDiceRoll = 2;

  void rolldice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'lib/assets/images/dice-images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(20),
              foregroundColor: Colors.black,
              textStyle: TextStyle(fontSize: 28)),
          child: Text("Roll"),
        )
      ],
    );
  }
}
