import 'package:flutter/material.dart';

class PaintPage extends StatefulWidget{
  createState() => new PaintState();
}

class PaintState extends State<PaintPage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
      ),
      body: new Center(child: new Text("12")),
    );
  }

}