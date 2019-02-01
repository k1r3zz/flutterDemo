import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {

  @override
  IndexState createState() => new IndexState();

}

class IndexState extends State<IndexPage> {
  bool _istouch = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: _istouch ? new Icon(Icons.star) : new Icon(Icons.details),
            title: new Text('dsa'),
            onTap: () {
//            Navigator.pop(context);
              setState(() {
                if (_istouch) {
                  _istouch = false;
                } else {
                  _istouch = true;
                }
              });
            },

          ),

          new Divider(),

          new ListTile(
            leading: _istouch ? new Icon(Icons.star) : new Icon(Icons.details),
            title: new Text('ddd'),
            onTap: () {
//            Navigator.pop(context);
              setState(() {
                if (_istouch) {
                  _istouch = false;
                } else {
                  _istouch = true;
                }
              });
            },

          ),

        ],


      ),
      backgroundColor: _istouch ? Colors.orange : Colors.blue,

    );
  }
}
