import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;


class MyHomePage extends StatefulWidget {

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State <MyHomePage> {
  var _ipAddress = 'unknow';

//  _getIpAddress() async {
//    var url = 'https://httpbin.org/ip';
//    var httpClient = new HttpClient();
//
//    String result;
//
//    try {
//      var requset = await httpClient.getUrl(Uri.parse(url));
//      var response = await requset.close();
//      if (response.statusCode == HttpStatus.OK) {
//        var json = await response.transform(UTF8.decoder).join();
//        var data = JSON.decode(json);
//        result = data['origin'];
//      } else {
//        result = "error";
//      }
//    } catch (exception) {
//      result = "Fail getting ip";
//    }
//
//    if (!mounted) return;
//
//    setState(() {
//      _ipAddress = result;
//    });
//  }

  loadData() async{
    var url = 'https://httpbin.org/ip';
    String data_URL="https://jsonplaceholder.typicode.com/posts";
    http.Response response=await http.get(data_URL);
    setState((){
      var data=JSON.decode(response.body);
      _ipAddress=data[1]["title"];
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new ListView(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('YourIp:'),
            new Text('$_ipAddress'),
            new RaisedButton(
                onPressed: loadData,
                child: new Text("get Ip address"),
            )

          ],

        ),

      ),

    );
  }

}