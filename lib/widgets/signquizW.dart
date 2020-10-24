import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class QuestionW extends StatelessWidget {
  final String questionText;
  final String imgPath;
  QuestionW({this.questionText, this.imgPath});
  @override
  Widget build(BuildContext context) {
    return ImageW(
      imgAddress: imgPath,
      qText: questionText,
    );
  }
}

class ImageW extends StatelessWidget {
  final imgAddress;
  final qText;

  ImageW({Key key, this.imgAddress, this.qText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imgAddress != '') {
      return Column(
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage(
                imgAddress,
              ),
              fit: BoxFit.contain,
              gaplessPlayback: true, // Prevents image flickering
            ),
          ),
          AutoSizeText(
            qText,
            maxLines: 2,
            style: TextStyle(fontSize: 22),
            overflow: TextOverflow.ellipsis,
          )
        ],
      );
    } else {
      return Container(
        margin: EdgeInsets.all(10),
        child: Text(
          qText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
      );
    }
  }
}
