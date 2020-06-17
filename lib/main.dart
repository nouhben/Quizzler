import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';

QuizBrain _quizBrain = QuizBrain();
void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzler App',
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
/*

  final _questions = [
    Question(question: 'Brazil has 6 football world cups?', answer: false),
    Question(question: 'Algeria is a country in Africa?', answer: true),
    Question(question: 'French fries were first made in France?', answer: true),
    Question(question: 'A Slug\'s blood is green?', answer: true),
    Question(question: 'Flutter is a programming language?', answer: false),
    Question(question: 'Pubg is the best game ever?', answer: true),
  ];
 */
  /*
  *  final _questions = [
    {
      'question': 'question 1',
      'answer': true,
    },
    {
      'question': 'question 2',
      'answer': false,
    },
    {
      'question': 'question 3',
      'answer': true,
    },
    {
      'question': 'question 4',
      'answer': false,
    },
    {
      'question': 'question 5',
      'answer': true,
    },
  ];
  * */
  List<Widget> _scoreKeeper = [];
  // ignore: non_constant_identifier_names
  // int CurrentQuestionNumber = 0;
  void checkUsersAnswer(bool answer) {
    setState(() {
      if (_quizBrain.getQuestionAnswer() == answer) {
        //TODO: Add the check icon to the list
        _scoreKeeper.add(
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 20.0,
              )),
        );
      } else {
        //TODO: Add the close icon to the list
        _scoreKeeper.add(
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.close,
                color: Colors.red,
                size: 25.0,
              )),
        );
      }
      _quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                //Display teh question
                //_questions[questionIndex].values.first,
                // _questions[questionIndex].question,
                //_quizBrain.questions[questionIndex].question,
                _quizBrain.getQuestionText() + '\n 🤔',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
                textColor: Colors.white,
                color: Color(0xff0E17FE),
                onPressed: () {
                  // DO THE SAME
                  //Check the answer of the  displayed question
                  //if it is true add a check and display another question
                  //if not add a cross ///
                  //if (_questions[questionIndex].values.last) {
                  //if (_quizBrain.get[questionIndex].answer) {
                  // if (_quizBrain.getQuestionAnswer(CurrentQuestionNumber)) {
                  checkUsersAnswer(true);
                  /*
                  setState(() {
                    /*
                   *  CurrentQuestionNumber++;
                    if (CurrentQuestionNumber >= _quizBrain.numberOfQuestion) {
                      CurrentQuestionNumber = 0;
                      _scoreKeeper = [];
                    }
                   * */
                    _quizBrain.nextQuestion();
                  });
                  */
                },
                child: Text(
                  'Hell Yeah! 😎',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  //TODO: Update score & change the text on the placeholder
                  checkUsersAnswer(false);
                },
                child: Text(
                  'Oh No! 🙅🖕️️',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
          ),
        ),
        // ROW for keeping the score
        Expanded(
          child: Row(
            children: _scoreKeeper,
          ),
        ),
      ],
    );
  }
}
