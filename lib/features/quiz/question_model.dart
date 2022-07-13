class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "PumpSanity is simulator of?",
    [
      Answer("DDR", false),
      Answer("ITG", false),
      Answer("PIU", true),
      Answer("DMX", false),
    ],
  ));

  list.add(Question(
    "What was the first name of PumpSanity?",
    [
      Answer("StepPrime", true),
      Answer("StepF2", false),
      Answer("PumpMania", false),
      Answer("Step It Up", false),
    ],
  ));

  list.add(Question(
    "What was placeholder name for PumpSanity?",
    [
      Answer("StepPrimeF2", false),
      Answer("SimplyPump", false),
      Answer("StepPrime+", false),
      Answer("PrimeStep", true),
    ],
  ));

  list.add(Question(
    "StepPrime and StepP1 its the same project?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));

  return list;
}
