// Model class to represent a quiz question and its answers.
class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text; // The text of the question
  final List<String> answers; // The list of possible answers

  // Method to shuffle the answers for randomization.
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // Create a copy of the answers list
    shuffledList.shuffle(); // Shuffle the list in-place
    return shuffledList; // Return the shuffled list
  }
}
