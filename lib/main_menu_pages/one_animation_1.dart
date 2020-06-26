import 'package:fch/main_menu_pages/one_animation_1_demo.dart';
import 'package:fch/main_menu_pages/one_animation_1_source.dart';
import 'package:fch/main_menu_pages/one_list_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../about.dart';

class AnimationOne extends StatefulWidget {
  AnimationOne({this.title = 'Animate a page route transition'});

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
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


// Titles
// Title English
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Animate a page route transition',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
// Title Arabic
                      Text(
                        ' تحريك انتقال مسار الصفحة ',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
// Descriptions
                      Column(
                        children: [
// Description English
                          Text('''

A design language, such as Material, defines standard behaviors when transitioning between routes (or screens).

Sometimes, though, a custom transition between screens can make an app more unique.

To help, PageRouteBuilder provides an Animation object. This Animation can be used with Tween and Curve objects to customize the transition animation.

This recipe shows how to transition between routes by animating the new route into view from the bottom of the screen.

                          ''',
                              style: TextStyle(fontSize: 19),
                            textDirection: TextDirection.ltr,
                          ),
                          Divider(
                            height: 10,
                          ),
// Buttons
                          Row(
                            children: [
// Button Demo
                              Expanded(
                                child: FlatButton(
                                  color:Colors.black12,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  onPressed: () {
                                    print("Here should be add the Example work");
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => One_animation_One_demo()));
                                  },
                                  child: Text('Demo', style: TextStyle(fontSize: 17)),
                                ),
                              ),
// Button Source
                              Expanded(
                                child: FlatButton(
                                  color:Colors.black12,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  onPressed: () {
                                    print("Here should be add the Code Source");
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnimationOneSource()));
                                  },
                                  child: Text('Source', style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 10,
                          ),
// Description Arabic
                          Text(
                            '''

تحدد لغة التصميم ، مثل Material Design، السلوكيات القياسية عند الانتقال بين المسارات routes  أو الشاشات Screens 
ومع ذلك ، في بعض الأحيان ، يمكن للانتقال المخصص بين الشاشات أن يجعل التطبيق أكثر تميزًا.
للمساعدة ، يوفر PageRouteBuilder  كائنًا للحركة Animation object 
يمكن استخدام هذا Animation  مع كائنات Tween و Curve لتخصيص الحركة الانتقالية. 
نوضح هنا كيفية الانتقال بين المسارات من خلال تحريك المسار الجديد للعرض من أسفل الشاشة.

                            ''',
                            style: TextStyle(fontSize: 20),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
