import 'package:flutter/material.dart';
import 'package:gojekdummy/go_appbar.dart';
import 'package:gojekdummy/go_button.dart';
import 'label_below_icon.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _bottomBar(),
        backgroundColor: Colors.grey,
        body:
            ListView(shrinkWrap: true, padding: EdgeInsets.all(0.0), children: [
          Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                  child: Column(children:[
                _header(),
                _goPayBox(),
                Row(
                  children: [
                    GoButton(label: "GO-RIDE"),
                    GoButton(label: "GO-CAR"),
                    GoButton(label: "Gojek"),
                    GoButton(label: "Gojek")
                  ],
                ),
                Row(
                  children: [
                    GoButton(label: "GO-RIDE"),
                    GoButton(label: "GO-CAR"),
                    GoButton(label: "Gojek"),
                    GoButton(label: "Gojek")
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

  _header() {
    return SizedBox.fromSize(
        size: Size.square(MediaQuery.of(context).size.width / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(icon: Icon(Icons.refresh)
                //Image.asset("assets/ojek_orange.png"),
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
              children: <Widget>[
                Text("GOPAY"),Text("120.000")
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(40.0, 0.0)),
                color: Color.fromARGB(255, 0, 60, 163)
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color.fromARGB(255, 44, 95, 184)),
      margin: EdgeInsets.all(10.0),
    );
  }
}
