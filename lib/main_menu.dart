import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'main_list.dart';

class Menu extends StatefulWidget {
  Menu({this.title = 'Flutter Cookbook Hints'});

  final String title;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: CookbookListTitles.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                onTap: (){
                  print(CookbookListTitles[index].num);
                  print(CookbookListTitles[index].title);
                  Navigator.of(context).pushNamed('/' + CookbookListTitles[index].num);
                },
                leading: Text(
                  CookbookListTitles[index].num,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  CookbookListTitles[index].title,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
