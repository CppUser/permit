import 'package:flutter/material.dart';
import 'package:permit/model/data.dart';
import 'package:permit/widgets/resultW.dart';
import 'package:permit/widgets/signQuizItemsW.dart';

class SignQuizPage extends StatefulWidget {
  SignQuizPage({
    Key key,
  }) : super(key: key);

  @override
  _SignQuizPageState createState() => _SignQuizPageState();
}

class _SignQuizPageState extends State<SignQuizPage> {
  int _currentIndex = 0;
  int _correctAnswers = 0;
  int _wrongAnswers = 0;
  final QuestionData data = QuestionData();

  void _clearState() => setState(() {
        _currentIndex = 0;
        _correctAnswers = 0;
        _wrongAnswers = 0;
      });

  @override
  Widget build(BuildContext context) {
    var newData = newListofData(data);
    return Scaffold(
      appBar: AppBar(
        title: Text('Дорожные знаки'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            _currentIndex < newData.length
                ? SignQuizItems(
                    index: _currentIndex,
                    question: newData,
                    onChangeAnswer: onChangeAnswer,
                  )
                : ResultW(
                    total: newData.length,
                    correctAnswers: _correctAnswers,
                    wrongAnsers: _wrongAnswers,
                    onClearState: _clearState,
                  ),
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(
          context, _currentIndex, _correctAnswers, _wrongAnswers, _clearState),
    );
  }

  void onChangeAnswer(bool isCorresct) {
    setState(() {
      if (isCorresct) {
        _correctAnswers++;
      } else {
        _wrongAnswers++;
      }
      _currentIndex++;
    });
  }

  Widget bottomBar(BuildContext context, int currentIndex, int correctAnswers,
      int wrongAnswers, Function clearState) {
    return Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () => navigateHome(context, '/'),
            ),
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Text(
              correctAnswers.toString(),
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.clear,
              color: Colors.red,
            ),
            Text(
              wrongAnswers.toString(),
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.red, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(Icons.autorenew, color: Colors.white),
              onPressed: clearState,
            )
          ],
        ),
      ),
    );
  }

  void navigateHome(BuildContext context, String nav) {
    Navigator.of(context).pushReplacementNamed(nav);
  }

//TODO: Implement
//Combine to Single Quize page for both Signs and text to be a single test
//Check navPath and determine which Data to post
  Widget navPath(BuildContext context, String navpath) {}

  List<Questions> newListofData(QuestionData data) {
    List<Questions> tempQuest = List<Questions>();

    for (var item in data.questions) {
      if (item.category == 'sign') {
        tempQuest.add(item);
      }
    }

    return tempQuest;
  }
}
