import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class About extends StatefulWidget {
  About({this.title = 'Way Create this app'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _AboutState();
  }
}

class _AboutState extends State<About> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: Text(
            widget.title,
            textDirection: TextDirection.ltr,
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(

                      child: Container(
                        alignment: Alignment.center,

                        child: Column(
                          children: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.black54,
                                onPressed: () {
                                },
                                child: Text(
                                  'Demo',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),


                            ),
                            Center(
                              child: RaisedButton(
                                color: Colors.black54,
                                onPressed: () {
                                },
                                child: Text(
                                  'Source',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),


                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
