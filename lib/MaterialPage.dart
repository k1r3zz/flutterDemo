import 'package:flutter/material.dart';
import 'package:fl_project/view/IndexPage.dart';
import 'package:fl_project/view/SecondPage.dart';
import 'package:fl_project/LayoutPage.dart';


class MaterialPage extends StatefulWidget {
  MaterialState createState() => new MaterialState();
}

class MaterialState extends State<MaterialPage>
    with SingleTickerProviderStateMixin {
//  PageController pageController;
//  int page = 0;

  TabController tabController;

  @override
  void initState() {
    super.initState();
    // pageController = new PageController(initialPage: this.page);
    tabController = new TabController(length: 4, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Material"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.star),
              onPressed: () {
                print("1234213");
              }),

        ],
      ),
      body: new Hero(
        tag: "tag",
        child: new TabBarView(
            controller: tabController,
            children: <Widget>[
              new IndexPage(),
              new SecondPage(),
              new IndexPage(),
              new SecondPage(),
            ]
        ),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "YYC", style: new TextStyle(color: Colors.white),),
              accountEmail: new Text(
                "777777@qq.com", style: new TextStyle(color: Colors.white),),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "http://d.hiphotos.baidu.com/zhidao/pic/item/cc11728b4710b9121ba52d66c4fdfc03934522c6.jpg"),
                ),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "http://www.pptok.com/wp-content/uploads/2012/08/songmao-5.jpg")
                  )

              ),
            ),
            new ListTile(
              title: new Text("FirstPage"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext con) {
                          return new layoutPage("FirstPage");
                        }
                    )

                );
              },

            ),
            new Divider(),
            new ListTile(
              title: new Text("SecondPage"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
              },

            ),

          ],

        ),
      ),
//      body: new PageView(
//        children: <Widget>[
//          new IndexPage(),
//          new SecondPage(),
//          new IndexPage(),
//          new SecondPage(),
//        ],
//        controller: pageController,
//        onPageChanged: onPageChanged,
//
//      ),

//      bottomNavigationBar: new BottomNavigationBar(items: [
//        new BottomNavigationBarItem(
//            icon: new Icon(Icons.title),
//            title: new Text("title"),
//            backgroundColor: Colors.grey
//
//        ),
//        new BottomNavigationBarItem(
//            icon: new Icon(Icons.star),
//            title: new Text("star"),
//            backgroundColor: Colors.grey
//
//        ),
//        new BottomNavigationBarItem(
//            icon: new Icon(Icons.details),
//            title: new Text("details"),
//            backgroundColor: Colors.grey
//
//        ),
//        new BottomNavigationBarItem(
//            icon: new Icon(Icons.transform),
//            title: new Text("transform"),
//            backgroundColor: Colors.grey
//
//        ),
//
//      ],
//        onTap: onTap,
//        currentIndex: page,
//
//      ),

      bottomNavigationBar: new Material(
        color: Colors.grey,
        child: new TabBar(
            controller: tabController,
            tabs: <Tab>[
              new Tab(text: "title", icon: new Icon(Icons.title)),
              new Tab(text: "star", icon: new Icon(Icons.star)),
              new Tab(text: "details", icon: new Icon(Icons.details)),
              new Tab(text: "transform", icon: new Icon(Icons.transform)),
            ]
        ),
      ),
    );
  }


  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

//  void onTap(int index) {
////    pageController.jumpToPage(index);
//    pageController.animateToPage
//      (
//        index,
//        duration: const Duration(milliseconds: 300),
//        curve: Curves.ease);
//
//  }

//  void onPageChanged(int page) {
//    setState(() {
//      this.page = page;
//    });
//  }

}