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
  String getQuestionText(int questionNumber) {
    return (questionNumber >= 0 && questionNumber < _questions.length)
        ? _questions[questionNumber].question
        : '';
  }
}
