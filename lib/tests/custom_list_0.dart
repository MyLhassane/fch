// Flutter code sample for ListTile

// Here is an example of a custom list item that resembles a Youtube related
// video list item created with [Expanded] and [Container] widgets.
//
// ![Custom list item a](https://flutter.github.io/assets-for-api-docs/assets/widgets/custom_list_item_a.png)

import 'package:fch/main_menu_pages/sex_list_animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Custom List';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.num,
    this.title,
    this.user,
    this.viewCount,
    this.demo,
    this.source,
  });

  final Widget num;
  final String title;
  final String user;
  final int viewCount;
  final RaisedButton demo;
  final RaisedButton source;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: num,
              ),
              Expanded(
                flex: 6,
                child: _VideoDescription(
                  title: title,
                  user: user,
                  viewCount: viewCount,
                  demo: demo,
                  source: source,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: RaisedButton(
                  onPressed: null,
                  child: Text('Demo', style: TextStyle(fontSize: 20)),
                ),
              ),
              Expanded(
                flex: 2,
                child: RaisedButton(
                  onPressed: null,
                  child: Text('Source', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  } //// Widget build
} //// class CustomListItem

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key key,
    this.title,
    this.user,
    this.viewCount,
    this.demo,
    this.source,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;
  final RaisedButton demo;
  final RaisedButton source;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),

        ],
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: <CustomListItem>[
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          num: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                border: Border.all(width: 3,color: Colors.green,style: BorderStyle.solid)
            ),
            child: Center(
              child: Text(
                "01",
                textAlign: TextAlign.center,
              ),
            ),
            height: 100,
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          num: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
      ],
    );
  }
}
