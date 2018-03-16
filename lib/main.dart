import 'package:flutter/material.dart';
import 'package:fl_project/ListPage.dart';
import 'package:fl_project/PaintPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:fl_project/Canvas.dart';
import 'package:fl_project/LayoutPage.dart';
import 'package:fl_project/InternetPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new MaterialApp(
//      title: 'Welcome to Flutter',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Welcome '),
//        ),
//        body: new Center(
//          //child: new Text('Hello World'), // Replace the highlighted text...
//          child: new Text(wordPair.asPascalCase), // With this highlighted text.
////          child: new RandomWords(), // ... this highlighted text
//
//        ),
//      ),
//    );
    return new MaterialApp(
      title: 'Startup Name Generator1111',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
//      home: new RandomWords(),
      home: new SampleAppPage(),
    );
  }

}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  createState() => new _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  String textToShow = "l like flutter";
  bool toggle = true;

  void _upDateText() {
    setState(() {
      textToShow = "222222";
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return new Text('asdasd');
    } else {
      return new MaterialButton(
        onPressed: () {},
        child: new Text("123456"),
      );
    }
  }

  _toListPage() {
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (BuildContext con) {
              return new ListPage();
            }
        )

    );
  }

  _toPaintPage() {
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (BuildContext con) {
              return new PaintPage(title: "asdasd");
            }
        )

    );
  }

  _toLayoutPage() {
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (BuildContext con) {
              return new Signature();
            }
        )

    );
  }

  _toLayoutsPage() {
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (BuildContext con) {
              return new layoutPage();
            }
        )

    );
  }

  _toIntentPage() {
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (BuildContext con) {
              return new MyHomePage();
            }
        )

    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("simple app"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new MaterialButton(
            onPressed: _toListPage,
            child: _getToggleChild(),
            color: Colors.orange,
            padding: new EdgeInsets.only(
                left: 30.0, right: 30.0, top: 30.0, bottom: 30.0),
          ),
          new MaterialButton(
            onPressed: _toPaintPage,
            child: new Text("动画"),
            color: Colors.orange,
            padding: new EdgeInsets.only(
                left: 30.0, right: 30.0, top: 30.0, bottom: 30.0),
          ),
          new CupertinoButton(
            onPressed: _toLayoutPage,
            child: new Text("列表"),
            color: Colors.blue,
            padding: new EdgeInsets.only(
                left: 30.0, right: 30.0, top: 30.0, bottom: 30.0),),
          new CupertinoButton(
            onPressed: _toLayoutsPage,
            child: new Text("布局"),
            color: Colors.brown,
            padding: new EdgeInsets.only(
                left: 30.0, right: 30.0, top: 30.0, bottom: 30.0),),
          new CupertinoButton(
            onPressed: _toIntentPage,
            child: new Text("网络请求"),
            color: Colors.brown,
            padding: new EdgeInsets.only(
                left: 30.0, right: 30.0, top: 30.0, bottom: 30.0),),
        ],

      ),

//      new Center(
//        child: new MaterialButton(
//            onPressed: _toListPage,
//            child: _getToggleChild(),
//            color: Colors.orange,
//            padding: new EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0,bottom: 30.0),
//        ),
//      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: _upDateText,
        tooltip: 'update Text',
        child: new Icon(Icons.update),
      ),
    );
  }
}

