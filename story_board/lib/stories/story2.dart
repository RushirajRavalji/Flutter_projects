import 'package:flutter/material.dart';

class Story2 extends StatelessWidget {
  const Story2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("The Clever Rabbit 🐇"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Story Content
            const Text(
              "Once upon a time, in a dense jungle, lived a clever little rabbit named Ruffy. "
              "He was small but very smart. In the same jungle, a cruel lion ruled over all the animals. "
              "The lion would hunt and eat whoever he pleased, and all the animals lived in fear.\n\n"
              "One day, the animals came up with an idea. They decided that every day, they would send one animal "
              "to the lion as food, so he wouldn’t hunt them randomly. The lion agreed, but the animals were still sad.\n\n"
              "When it was Ruffy’s turn, he didn’t panic. Instead, he thought of a clever plan. He took his time reaching the lion, "
              "arriving very late. The lion roared angrily, 'Why are you so late?'\n\n"
              "Ruffy bowed and said, 'Oh mighty king, I was coming early, but another lion stopped me! He said he was the real king of this jungle!'\n\n"
              "The lion roared furiously, 'Another lion? Take me to him at once!'\n\n"
              "Ruffy led the lion to a deep well and pointed inside, 'Look, he’s right there!' The lion peered into the well and saw his own reflection. "
              "Thinking it was another lion, he roared loudly, but the reflection roared back. Enraged, the lion jumped into the well to fight—but he couldn’t swim. "
              "He drowned, and the jungle was finally free of his tyranny.\n\n"
              "All the animals cheered for Ruffy, the clever little rabbit who saved them all!",
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
                "Moral: Intelligence and wisdom can defeat brute strength.",
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
