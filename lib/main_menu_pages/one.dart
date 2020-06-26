import 'package:fch/main_menu_pages/one_list_animation.dart';
import 'package:fch/main_menu_pages/sex_list_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../about.dart';
import 'one_animation_1.dart';

class One extends StatefulWidget {
  One({this.title = 'Animation'});

  final String title;
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],

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
// / ListView
      body: ListView.builder(
        itemCount: animationTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),

// List of all slides

              child: ListTile(
                onTap: () {
                  print(animationTitles[index].title);
                  print(animationTitles[index].num);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AnimationOne()));

                },

// / Single Number

                leading: Text(
                  animationTitles[index].num,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                  ),
                ),

// / Single Title

                title: Text(
                  animationTitles[index].title,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                  ),
                ),

// / Single SubTitle ()

                subtitle: Text(
                  animationTitles[index].subTitle,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
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
