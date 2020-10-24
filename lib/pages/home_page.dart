import 'package:flutter/material.dart';
import 'package:permit/model/route_generator.dart';
import 'package:permit/widgets/homeItemW.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageItemData homeItemData = HomePageItemData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: homeItemData.pages.length,
        itemBuilder: (BuildContext context, int index) {
          return _homePageItems(context, index, homeItemData);
        },
      ),
      bottomNavigationBar: bottomBar,
    );
  }

  final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      centerTitle: true,
      title: Row(
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.only(top: 2.0),
            icon: Icon(Icons.list),
            iconSize: 35,
            onPressed: () {},
          ),
          Text(
            'Правила дорожного движения',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ));

  final bottomBar = Container(
    height: 55.0,
    child: BottomAppBar(
      color: Color.fromRGBO(58, 66, 86, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.blur_on, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.hotel, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ),
  );

  Widget _homePageItems(
      BuildContext context, int index, HomePageItemData data) {
    return HomeItems(
      index: index,
      itemData: data,
    );
  }
}
