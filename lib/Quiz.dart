class Quiz {
  String _question;
  bool _answer;

  Quiz(String question, bool answer) {
    this._question = question;
    this._answer = answer;
  }

  String getQuestion() {
    return this._question;
  }

  bool getAnswer() {
    return this._answer;
  }
}
