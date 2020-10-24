import 'package:flutter/material.dart';
import 'package:permit/pages/home_page.dart';
import 'package:permit/pages/signquiz_page.dart';
import 'package:permit/pages/textquiz_page.dart';

class HomePageItem {
  final navPath;
  final String title;
  final String description;

  HomePageItem({this.navPath, this.title, this.description});
}

class HomePageItemData {
  final _data = [
    HomePageItem(
      navPath: '/text_quiz',
      title: 'Поаидение на дороге',
      description:
          'Устное тестирование в котором вы будете читать текст и отвечать на вопросы',
    ),
    HomePageItem(
      navPath: '/sign_quiz',
      title: 'Дорожные Знаки',
      description:
          'В этом тестировании вы отвечаете на вопросы о знании знаков',
    ),
  ];

  List<HomePageItem> get pages => [..._data];
}

class RouteGenerator {
  static Route<dynamic> handleRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());

      case '/text_quiz':
        return MaterialPageRoute(builder: (_) => TextQuizPage());

      case '/sign_quiz':
        return MaterialPageRoute(builder: (_) => SignQuizPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
