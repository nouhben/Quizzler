import 'package:flutter/material.dart';

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
  final _questions = [
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
  int questionIndex = 0;
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
                _questions[questionIndex].values.first,
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
                color: Colors.green,
                onPressed: () {
                  // DO THE SAME
                  //Check the answer of the  displayed question
                  //if it is true add a check and display another question
                  //if not add a cross ///
                  if (_questions[questionIndex].values.last) {
                    //TODO: Add the check icon to the list
                    print(_questions[questionIndex].values.last);
                  } else {
                    //TODO: Add the close icon to the list
                    print(_questions[questionIndex].values.last);
                  }
                  setState(() {
                    questionIndex++;
                    if (questionIndex >= _questions.length) {
                      questionIndex = 0;
                    }
                  });
                },
                child: Text(
                  'True',
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
                  // Update score & change the text on the placeholder
                },
                child: Text(
                  'False',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
          ),
        ),
        // ROW for keeping the score
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 20.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.close,
                  color: Colors.red,
                  size: 25.0,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
