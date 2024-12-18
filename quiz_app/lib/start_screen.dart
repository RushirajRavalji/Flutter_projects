import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 199, 246, 226),
            Color.fromARGB(255, 178, 235, 217),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Lets Learn Flutter",
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 33, 33), fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(onPressed: () {}, child: Text("Let's Go"))
          ],
        ),
      ),
    );
  }
}
