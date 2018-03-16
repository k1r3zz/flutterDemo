import 'package:flutter/material.dart';


class Signature extends StatefulWidget {
  SignatureState createState() => new SignatureState();
}

class SignatureState extends State<Signature> {

  List list = [];

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Startup Name Generator'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list),
                onPressed: () {
                  print("1234213");
                }),
          ],
        ),
        body: new ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int position) {
              return getRow(position);
            }
        )

    );
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 30; i++) {
      list.add(getRow(i+1));
    }
  }

//  _getListData() {
//    List<Widget> widgets = [];
//    for (int i = 0; i < 30; i++) {
//      widgets.add(new GestureDetector(
//        child: new Padding(padding: new EdgeInsets.all(10.0),
//            child: new Text("Row $i")),
//        onTap: () {
//          print("row$i tapped");
//        },
//      ));
//    }
//    return widgets;
//  }

  Widget getRow(int i) {
    return new GestureDetector(
      child: new Padding(
          padding: new EdgeInsets.all(10.0),
          child: new Text("Row $i")),
      onTap: () {
        setState(() {
          list.add(getRow(list.length + 1));
          print("row $i+ioio");
        });
      },
    );
  }

}
