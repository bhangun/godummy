import 'package:flutter/material.dart';
import 'package:gojekdummy/go_button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _bottomBar(),
        backgroundColor: Color.fromARGB(255, 242, 242, 244),
        body:
            ListView(shrinkWrap: true, padding: EdgeInsets.all(0.0), children: [
          Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                  child: Column(children: [
                _header(),
                _goPayBox(),
                Row(
                  children: [
                    GoButton(label: "GO-RIDE", img: "assets/ojek_orange.png"),
                    GoButton(label: "GO-CAR", img: "assets/gocar.png"),
                    GoButton(label: "GO-BLUEBIRD", img: "assets/bluebird.png"),
                    GoButton(label: "Gojek", img: "assets/ojek_orange.png")
                  ],
                ),
                Row(
                  children: [
                    GoButton(
                      label: "GO-SEND",
                      img: "assets/listrik.png",
                    ),
                    GoButton(label: "GO-CAR", img: "assets/ojek_orange.png"),
                    GoButton(label: "Gojek", img: "assets/ojek_orange.png"),
                    GoButton(label: "Gojek", img: "assets/ojek_orange.png")
                  ],
                ),
              ]))),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            margin: EdgeInsets.all(20.0),
            height: 150.0,
            child: Column(children: [Text("mmm")]),
          )
        ]));
  }

  _header() {
    return SizedBox.fromSize(
        size: Size.square(MediaQuery.of(context).size.width / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: null,
            ),
            Text("point")
          ],
        ));
  }

  _goPayBox() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      height: 150.0,
      child: Column(
        children: <Widget>[
          Container(
            height: 40.0,
            child: Row(
              children: <Widget>[Text("GOPAY"), Text("120.000")],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(40.0, 0.0)),
                color: Color.fromARGB(255, 0, 60, 163)),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color.fromARGB(255, 44, 95, 184)),
      margin: EdgeInsets.all(10.0),
    );
  }

  Widget _bottomBar() {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.mail),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
