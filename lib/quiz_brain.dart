import 'package:quizzler/question.dart';

class QuizBrain {
  final List<Question> _questions = [
    Question(question: 'Brazil has 6 football world cups?', answer: false),
    Question(question: 'Algeria is a country in Africa?', answer: true),
    Question(question: 'French fries were first made in France?', answer: true),
    Question(question: 'A Slug\'s blood is green?', answer: true),
    Question(question: 'Flutter is a programming language?', answer: false),
    Question(question: 'Pubg is the best game ever?', answer: true),
    Question(
        question: 'Some cats are actually allergic to humans', answer: true),
    Question(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Question(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Question(question: 'A slug\'s blood is green.', answer: true),
    Question(
        question: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        answer: true),
    /*
      Question(
        question: 'It is illegal to pee in the Ocean in Portugal.',
        answer: true),
    Question(
        question:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answer: false),
    Question(
        question:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    Question(
        question:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        answer: false),
    Question(
        question:
            'The total surface area of two human lungs is approximately 70 square metres.',
        answer: true),
    Question(
        question: 'Google was originally called \"Backrub\".', answer: true),
    Question(
        question:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answer: true),
    Question(
        question:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answer: true
),*/
  ];
  int _currentQuestionNumber;
  //QuizBrain(this._questions, this._numberOfQuestion);
  QuizBrain() {
    //this._numberOfQuestion = _questions.length;
    this._currentQuestionNumber = 0;
  }

  //int get numberOfQuestion => _numberOfQuestion;
//TODO: THROw the exceptions
  String getQuestionText() {
    /*return (_currentQuestionNumber >= 0 && questionNumber < _questions.length)
        ? _questions[questionNumber].question
        : '';*/
    return _questions[_currentQuestionNumber].question;
  }

  //TODO: THROw the exceptions
  bool getQuestionAnswer() => _questions[_currentQuestionNumber].answer;
  /*(questionNumber >= 0 && questionNumber < _questions.length)
          ? _questions[questionNumber].answer
          : false;
          */

  void nextQuestion() {
    if (_currentQuestionNumber < _questions.length - 1) {
      _currentQuestionNumber++;
    }
  }

  bool isFinished() {
    return _currentQuestionNumber == _questions.length - 1;
  }

  void reset() {
    _currentQuestionNumber = 0;
  }
}
