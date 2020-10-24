import 'package:flutter/material.dart';

class ResultW extends StatelessWidget {
  final total;
  final correctAnswers;
  final wrongAnsers;
  final Function onClearState;

  ResultW(
      {Key key,
      this.total,
      this.correctAnswers,
      this.wrongAnsers,
      this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (wrongAnsers >= 10) {
      msg = 'Тест Провален ';
    } else if (correctAnswers >= 40) {
      msg = 'вы прошли тест /n Поздравляем!!! ';
    }
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.green,
      ),
      child: Column(
        children: <Widget>[
          //TODO:Insert Image here for corrent and wrong Answers

          Text(msg),
          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответили на $correctAnswers из $total',
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(
            onPressed: onClearState,
            child: Text('Повторить'),
            //TODO: Add icon at the end of text
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(
            onPressed: () => navigateHome(context, '/'),
            child: Text('Вернутся к списку'),
            //TODO: Add icon at the end of text
          ),
        ],
      ),
    );
  }

  void navigateHome(BuildContext context, String nav) {
    Navigator.of(context).pushReplacementNamed(nav);
  }
}
