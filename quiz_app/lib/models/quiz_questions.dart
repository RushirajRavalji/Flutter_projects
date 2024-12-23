class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text; // Question text
  final List<String> answers; // Possible answers for the question

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // Create a copy of the answers list
    shuffledList.shuffle(); // Shuffle the list to randomize answer order
    return shuffledList;
  }
}
