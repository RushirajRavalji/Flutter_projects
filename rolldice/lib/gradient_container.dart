import 'package:flutter/material.dart';
import 'package:rolldice/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradiendContainer extends StatelessWidget {
  const GradiendContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 241, 188, 109),
            Color.fromARGB(255, 241, 234, 109),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: diceRoller(),
      ),
    );
  }
}
