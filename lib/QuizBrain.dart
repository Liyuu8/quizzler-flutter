import 'Quiz.dart';

class QuizBrain {
  int _quizNumber = 0;

  List<Quiz> _quizzes = [
    Quiz('Some cats are actually allergic to humans', true),
    Quiz('You can lead a cow down stairs but not up stairs.', false),
    Quiz('Approximately one quarter of human bones are in the feet.', true),
    Quiz('A slug\'s blood is green.', true),
    Quiz('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Quiz('It is illegal to pee in the Ocean in Portugal.', true),
    Quiz(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Quiz(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Quiz(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Quiz(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Quiz('Google was originally called \"Backrub\".', true),
    Quiz(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Quiz(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Quiz('This is the last quiz.\nDo you restart?', true),
  ];

  String getQuestion() {
    return _quizzes[_quizNumber].getQuestion();
  }

  bool _getAnswer() {
    return _quizzes[_quizNumber].getAnswer();
  }

  bool isLastQuiz() {
    return _quizNumber == _quizzes.length - 1;
  }

  bool checkAnswer(bool userChoice) {
    return userChoice == _getAnswer();
  }

  void nextQuiz() {
    if (_quizNumber < _quizzes.length - 1) {
      _quizNumber++;
    }
  }

  void restartQuiz() {
    _quizNumber = 0;
  }
}
