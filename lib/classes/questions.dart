class Question {
  final String questionText;

  Question(
    this.questionText,
  );
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Answer> answerList = [
  Answer('A', false),
  Answer('B', false),
  Answer('C', true),
  Answer('D', false),
];
