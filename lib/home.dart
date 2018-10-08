import 'package:flutter/material.dart';
import 'package:gojekdummy/components/go_icon.dart';
import 'package:gojekdummy/components/snackmore.dart';
import 'package:gojekdummy/util/constants.dart';
import 'package:gojekdummy/components/go_button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "asads";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/gopay_white.png"),
                Row(
                  children: <Widget>[
                    Image.asset("assets/point_small.png"),
                    _point()
                  ],
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: _bottomBar(),
        backgroundColor: Color.fromARGB(255, 242, 242, 244),
        body:
            ListView(shrinkWrap: true, padding: EdgeInsets.all(0.0), children: [
          Text(text),
          Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                  child: Column(children: [
                _banner(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GoButton(label: GO_RIDE, img: GO_RIDE_ICON),
                    GoButton(label: GO_CAR, img: GO_CAR_ICON),
                    GoButton(label: GO_BLUEBIRD, img: GO_BLUEBIRD_ICON),
                    GoButton(label: GO_MORE, img: GO_MORE_ICON)
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GoButton(
                      label: GO_SEND,
                      img: GO_SEND_ICON,
                    ),
                    GoButton(label: GO_CAR, img: GO_CAR_ICON),
                    GoButton(label: GO_BILLS, img: GO_BILLS_ICON),
                    GoButton(label: GO_MORE, img: GO_MORE_ICON)
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

  Widget _point() {
    return Container(
      child: Column(
        children: <Widget>[Text("745 pts")],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color.fromRGBO(255, 247, 235, 1.0)), //Colors.blueAccent[400]),
      margin: EdgeInsets.all(16.0),
    );
  }

  Widget _banner() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      height: 150.0,
      child: Column(
        children: <Widget>[_topBanner(), _mainBanner()],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color.fromRGBO(51, 102, 204, 1.0)),
      //Colors.blueAccent[400]),
      margin: EdgeInsets.all(16.0),
    );
  }

  Widget _topBanner() {
    return Container(
      height: 40.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("assets/gopay_white.png"),
          Text("Rp 120.000", style: TextStyle(color: Colors.white))
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(40.0, 0.0)),
          color: Color.fromRGBO(48, 99, 187, 1.0)),
    );
  }

  Widget _mainBanner() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GoIcon(GO_TRANSFER, GO_TRANSFER_ICON),
        GoIcon(GO_SCAN, GO_SCAN_ICON),
        GoIcon(GO_TOPUP, GO_TOPUP_ICON),
        //  GoIcon(GO_MORE, GO_MORE_ICON)
        Snackmenu(),
      ],
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
