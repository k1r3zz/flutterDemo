import 'package:flutter/material.dart';


class layoutPage extends StatefulWidget {

  @override
  layoutState createState() => new layoutState();
}

class layoutState extends State<layoutPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Container(
            color: Colors.blue,
            height: 25.0,
            child: new ListView(

            ),
          ),
          new MyAppBar(
            title: new Text(
              "Mow",
              style: Theme
                  .of(context)
                  .primaryTextTheme
                  .title,

            ),

          ),
          new Container(
            margin: const EdgeInsets.only(left: 10.0),
            color: const Color(0xff00ff00),
            height: 48.0,
          ),
          new Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 10.0,
              right: 10.0,
              bottom: 10.0,

            ),
            child: new Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(right: 10.0),
              padding: const EdgeInsets.only(right: 20.0),
              height: 40.0,
              color: Colors.orange,
              child: new Text(
                "12121212121",
                style: new TextStyle(
                    fontSize: 29.0,
                    color: Colors.green

                ),
              ),
            ),


          ),
          new Center(
            child: new Container(
              height: 10.0,
              color: Colors.yellow,
            ),

          ),
          new Align(
            alignment: Alignment.centerRight,
            child: new Text("asdsad"),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Image.asset('images/my.jpeg'),

              ),
              new Expanded(
                flex: 2,
                child: new Image.asset('images/my.jpeg'),

              ),
              new Expanded(
                child: new Image.asset('images/my.jpeg'),

              ),

            ],

          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.blue),


            ],
          ),
          new Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: new Stack(
              alignment: const Alignment(0.6, 0.6),
              children: <Widget>[
                new CircleAvatar(
                  backgroundImage: new AssetImage('images/my.jpeg'),
                  radius: 100.0,

                ),
                new Container(
                  decoration: new BoxDecoration(
                    color: Colors.black45,
                  ),
                  child: new Text(
                      'Mia B',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )

                  ),
                )

              ],
            )
          ),

//          new Expanded(
//              child: new Center(
//                child: new Text("2323"),
//              )
//          ),
        ],
      )
      ,
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: null
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: null
          )
        ],
      ),

    );
  }

}