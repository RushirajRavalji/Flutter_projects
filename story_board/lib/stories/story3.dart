import 'package:flutter/material.dart';

class Story3 extends StatelessWidget {
  const Story3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("The Honest Woodcutter 🪓"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Story Content
            const Text(
              "Once upon a time, a poor woodcutter lived near a river. Every day, he would go to the forest, chop wood, and sell it in the market. "
              "One day, while cutting wood near the river, his axe slipped from his hand and fell into the deep water.\n\n"
              "The woodcutter was heartbroken because he had no money to buy a new axe. Seeing his sorrow, a kind fairy appeared from the river. "
              "She held up a shining golden axe and asked, 'Is this yours?'\n\n"
              "The woodcutter shook his head, 'No, mine was just an ordinary wooden axe.'\n\n"
              "The fairy smiled and dipped into the river again. She came back with a silver axe and asked, 'Is this yours?'\n\n"
              "Again, the woodcutter replied, 'No, mine was just a simple wooden axe.'\n\n"
              "For the third time, the fairy went into the river and brought out the woodcutter’s real wooden axe. 'Is this the one?' she asked.\n\n"
              "The woodcutter’s face lit up, 'Yes! That is my axe!'\n\n"
              "Impressed by his honesty, the fairy gifted him all three axes—the golden, silver, and wooden ones! The woodcutter went home happily and lived a comfortable life.\n\n"
              "The other villagers heard his story, but some greedy ones tried to trick the fairy by pretending to lose their axes. "
              "However, because of their dishonesty, the fairy gave them nothing.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 20), // Spacing before the summary

            // Summary Container
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.brown[200], // Light brown color
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Moral: Honesty is always rewarded in the end.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
