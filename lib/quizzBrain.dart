import 'question.dart';

class QuizzBrain {
  int _questionNumber = 0;
  List<Question> _questionsKeeper = [
    Question('Can you drink water while running', true),
    Question('The blue whale is the biggest animal to have ever lived.', true),
    Question(
        'Pigs roll in the mud because they don’t like being clean.', false),
    Question('Bats are blind.', false),
    // Question(q: '', a: false),
    // Question(q: '', a: false),
    // Question(q: '', a: false),
    // Question(q: '', a: false),
    // Question(q: '', a: false),
    // Question(q: '', a: false),
    // Question(q: '', a: false),
    // Question(q: '', a: false),
  ];
  void questionCheck() {
    if (_questionNumber < _questionsKeeper.length - 1) _questionNumber++;
  }

  String getQuestionNumber() {
    return _questionsKeeper[_questionNumber].q;
  }

  bool getCorrectorAnswer() {
    return _questionsKeeper[_questionNumber].a;
  }

  bool isFinished() {
    if (_questionNumber >= _questionsKeeper.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
