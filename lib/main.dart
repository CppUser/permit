import 'package:flutter/material.dart';
import 'package:permit/model/route_generator.dart';
import 'package:permit/pages/home_page.dart';
import 'package:permit/pages/textquiz_page.dart';

void main() => runApp(Permit());

class Permit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Тестирование правил',
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: HomePage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.handleRoute,
    );
  }
}
