import 'package:fch/main_menu_pages/eleven_list_animation.dart';
import 'package:fch/main_menu_pages/one_list_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../about.dart';

class Eleven extends StatefulWidget {
  Eleven({this.title = 'Plugins'});

  final String title;
  @override
  _ElevenState createState() => _ElevenState();
}

class _ElevenState extends State<Eleven> {
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
        itemCount: pluginsTitles.length,
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
                  print(pluginsTitles[index].title);
                  print(pluginsTitles[index].num);
                  Navigator.of(context).pushNamed('/' + pluginsTitles[index].num);

                },

// / Single Number

                leading: Text(
                  pluginsTitles[index].num,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),

// / Single Title

                title: Text(
                  pluginsTitles[index].title,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),

// / Single SubTitle ()

                subtitle: Text(
                  pluginsTitles[index].subTitle,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.grey[500],
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
