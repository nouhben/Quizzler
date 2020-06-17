import 'package:quizzler/question.dart';

class QuizBrain {
  final List<Question> _questions = [
    Question(question: 'Brazil has 6 football world cups?', answer: false),
    Question(question: 'Algeria is a country in Africa?', answer: true),
    Question(question: 'French fries were first made in France?', answer: true),
    Question(question: 'A Slug\'s blood is green?', answer: true),
    Question(question: 'Flutter is a programming language?', answer: false),
    Question(question: 'Pubg is the best game ever?', answer: true),
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
}
