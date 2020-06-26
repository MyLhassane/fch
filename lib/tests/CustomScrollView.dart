import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  Scroll({this.title = 'معلومات هامة حول البرنامج'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ScrollState();
  }
}

class _ScrollState extends State<Scroll> {
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
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width;

    return MaterialApp(
      title: widget.title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black54,
          title: Text(widget.title, textDirection: TextDirection.rtl,),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        ScrollTop(),
                        //aboutTow(),

                        Center(
                          child: RaisedButton(
                            color: Colors.black54,
                            onPressed: () {
                            },
                            child: Text(
                              'تحميل',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),


                        ),

                        ScrollBottom(),
                      ],
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

class ScrollTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("""

هذا البرنامج هو عبارة عن ملخص دورة.

تعلم اللغة يعتمد بشكل كبير على الحفظ، وهو عملية تكرارية، طبعاً.
وبما ان الاغلبية لن يقوم بإعادة مشاهدات فيديوهات أي دورة، عدة مرات، حتى يستطيع حفظها.

لهذا قمت بتلخيص هذه الدورة، بأخذ فقط الصور الرئيسية، التي يمكنها التذكير، بكل محتويات الحلقات، في وقت وجيز.

للاستفاذة من هذا المحتوى، يجب أولاً مشاهذة الدورة الأصلية، ثم استخدام متكرر لهذا البرنامج بعدها،
حتى تكون قد أخذت الدرس الاصلي كاملا، ثم تشغل هذ البرنامج فقط لمراجعة ما قد درسته سلفاً، فهو فقط (للمراجعة).

هام عن الدورة:

تم تقديم الدورة من قبل قناة zAmericanEnglish

عنوان الدورة:
كورس شامل لتعلم اللغة الانجليزية من الصفر للمبتدئين كورس كامل من البداية الى الاحتراف

يمكنك تحميل تطبيق الدورة الأصلية هنا.
    """,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          )),
    );
  }
}

class ScrollBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("""

هذا البرنامج مجاني تماماً، خالي من جميع وسائل الربح.
فهو فقط تجربة تلخيص، أعتبرها جديدة.
انشأتها لتساعدني في عملية التعلم.
وأردة مشاركتها للعامة.
اتمنى ان تحقق الهدف المنشود منها.

المرجو إضافة رأيك كيفما كان،
فإن رأيك يهمني.

      """,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          )),
    );
  }
}
