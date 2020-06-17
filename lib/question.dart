class Question {
  String _question;

  // ignore: unnecessary_getters_setters
  String get question => _question;

  // ignore: unnecessary_getters_setters
  set question(String value) {
    _question = value;
  }

  bool _answer;

  Question({String question, bool answer}) {
    this._question = question;
    this._answer = answer;
  }

  // ignore: unnecessary_getters_setters
  bool get answer => _answer;

  // ignore: unnecessary_getters_setters
  set answer(bool value) {
    _answer = value;
  }
}
