import 'package:flutter/material.dart';

class AnswersW extends StatelessWidget {
  final String text;
  final isCorrect;
  final Function onChangeAnswer;

  const AnswersW({
    Key key,
    this.text,
    this.isCorrect,
    this.onChangeAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 5,
        ),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue[300],
              Colors.lightBlue[400],
            ],
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

/*

class AnswersW extends StatelessWidget {
  final String text;
  final isCorrect;
  final Function onChangeAnswer;

  const AnswersW({
    Key key,
    this.text,
    this.isCorrect,
    this.onChangeAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 5,
        ),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue[300],
              Colors.lightBlue[400],
            ],
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
  void checkAnswer(bool correct){
    if (correct) {
      
    }

  }
}

*/
