import 'package:flutter/material.dart';
import 'package:permit/widgets/check_answer.dart';
import 'package:permit/widgets/signquizW.dart';

class QuizItems extends StatelessWidget {
  final index;
  final question;
  final onChangeAnswer;
  const QuizItems({Key key, this.index, this.question, this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          QuestionW(
            questionText: question[index].question,
            imgPath: question[index].imagePath,
          ),
          ...question[index]
              .choices
              .map((e) => AnswersW(
                    text: e['choice'],
                    onChangeAnswer: onChangeAnswer,
                    isCorrect: e.containsKey('isCorrect') ? true : false,
                  ))
              .toList()
        ],
      ),
    );
  }
}

/*




 return Container(
      child: Column(
        children: <Widget>[
          QuestionW(
            questionText: question[index].question,
            imgPath: question[index].imagePath,
          ),
          ...question[index]
              .choices
              .map((e) => AnswersW(
                    text: e['choice'],
                    onChangeAnswer: onChangeAnswer,
                    isCorrect: e.containsKey('isCorrect') ? true : false,
                  ))
              .toList()
        ],
      ),
    );






*/
