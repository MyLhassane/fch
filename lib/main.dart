import 'package:fch/main_menu_pages/eleven.dart';
import 'package:fch/main_menu_pages/five.dart';
import 'package:fch/main_menu_pages/four.dart';
import 'package:fch/main_menu_pages/nine.dart';
import 'package:fch/main_menu_pages/one.dart';
import 'package:fch/main_menu_pages/seven.dart';
import 'package:fch/main_menu_pages/sex.dart';
import 'package:fch/main_menu_pages/tin.dart';
import 'package:fch/main_menu_pages/tow.dart';
import 'package:fch/main_menu_pages/tree.dart';
import 'package:fch/tests/CustomScrollView.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'main_menu.dart';
import 'main_menu_pages/eight.dart';
import 'tests/custom_list_0.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Hints',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Menu(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/menu": (context) => Menu(),
        "/01": (context) => One(),
        "/02": (context) => Tow(),
        "/03": (context) => Tree(),
        "/04": (context) => Four(),
        "/05": (context) => Five(),
        "/06": (context) => Sex(),
        "/07": (context) => Seven(),
        "/08": (context) => Eight(),
        "/09": (context) => Nine(),
        "/10": (context) => Tin(),
        "/11": (context) => Eleven(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  Home({this.title = 'Flutter Hints'});

  final String title;

  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  void initState(){
    super.initState();
  }
  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.announcement,
              color: Colors.white70,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
        ],
        backgroundColor: Colors.grey[900],
        title: Text(widget.title),
      ),
      body: Menu(),
    );
  }
}
