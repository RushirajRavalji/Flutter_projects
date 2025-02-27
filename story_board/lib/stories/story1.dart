import 'package:flutter/material.dart';

class Story1 extends StatelessWidget {
  const Story1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("The Brave Little Squirrel 🐿️"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Story Content
            const Text(
              "In a lush green forest, there lived a little squirrel named Sammy. "
              "Unlike the other squirrels who loved to jump from tree to tree, Sammy was terrified of heights. "
              "He preferred to stay close to the ground, nibbling on nuts and watching the birds fly above.\n\n"
              "One day, Sammy’s best friend, a baby bird named Pip, was learning to fly. Pip flapped his tiny wings excitedly, "
              "trying to take off from his nest high up in the tallest tree.\n\n"
              "But something went wrong! A strong wind blew, and Pip lost his balance. He fell from the nest, flapping his wings desperately. "
              "Sammy gasped as he watched his friend plummet toward the ground.\n\n"
              "Without thinking, Sammy raced up the tree. His tiny paws trembled as he climbed higher than he ever had before. "
              "The branches swayed, and his heart pounded, but he kept going—because his friend needed him.\n\n"
              "Just as Pip was about to hit the ground, Sammy leaped forward and caught him!\n\n"
              "The other animals cheered as Sammy carefully carried Pip back up to the nest. "
              "For the first time in his life, Sammy wasn’t afraid of heights anymore. He had discovered that "
              "courage is not the absence of fear but the strength to face it.\n\n"
              "From that day on, Sammy climbed trees like a true squirrel, never letting fear hold him back again!",
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
                "Moral: True courage is overcoming fear for the sake of others.",
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
