import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:fl_project/http/HttpUtil.dart';



class MyHomePage extends StatefulWidget {

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State <MyHomePage> {
  var _ipAddress = 'unknow啊啊啊';
  List widgets = [];
  bool isFirst = true;

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

//  loadData() async {
//    setState(() {
//      isFirst=false;
//    });
//    var url = 'https://httpbin.org/ip';
//    String data_URL = "https://jsonplaceholder.typicode.com/posts";
//    http.Response response = await http.get(data_URL);
//    setState(() {
//      var data = JSON.decode(response.body);
//      widgets = JSON.decode(response.body);
//      _ipAddress = data[0]["title"];
////      _ipAddress="点点滴滴";
//      isFirst=true;
//
//    });
//  }

  loadData() async {
    setState(() {
      isFirst=false;
    });

    String url = "api/so";
    var data = {'type': 6, 'p': 1,"size":20,"keyword":"你"};
    var response = await HttpUtil().get(url, data: data);
    print(response);
    setState(() {
 //     var data = JSON.decode(response.body);
      var data=json.decode(response.body);
//      widgets = JSON.decode(response.body);
      _ipAddress = data["data"];
//      _ipAddress="点点滴滴";
      isFirst=true;

    });
  }

  showLoadingDialog() {
    if ( isFirst == false) {
      return true;
    }

    return false;
  }

  getBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    } else {
      return new Text('$_ipAddress');
    }
  }

  getProgressDialog() {
    return new Center(child: new CircularProgressIndicator());
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
            getBody(),
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