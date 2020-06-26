import 'package:fch/main_menu_pages/one_list_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../about.dart';

class AnimationOne extends StatefulWidget {
  AnimationOne({this.title = 'AnimationOne'});

  final String title;

  @override
  _AnimationOneState createState() => _AnimationOneState();
}

class _AnimationOneState extends State<AnimationOne> {
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
        ],
        backgroundColor: Colors.grey[900],
        title: Text(widget.title),
      ),
// / ListView
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemCount: animationTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),

// List of all slides

              child: ListTile(
                onTap: () {
                  print(animationTitles[index].title);
                  print(animationTitles[index].num);
                  Navigator.of(context)
                      .pushNamed('/' + animationTitles[index].num);
                },

// / Single Number
// / English Title
                title: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        animationTitles[index].num,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        animationTitles[index].title,
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
// / Arabic Title ()
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            animationTitles[index].subTitle,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text('English Description',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'الوصف العربي',
                            style: TextStyle(fontSize: 20),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: const FlatButton(
                            color: Colors.red,
                            onPressed: null,
                            child: Text('Demo', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: null,
                            child:
                                Text('Source', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
// / Option Buttons
              ),
            ),
          );
        },
      ),
    );
  }
}
