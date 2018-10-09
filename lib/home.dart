import 'package:flutter/material.dart';
import 'package:gojekdummy/components/go_icon.dart';
import 'package:gojekdummy/components/goservices.dart';
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
  // String text = "asads";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0.0, // agar bay
            //backgroundColor: Colors.blue,// angan tidak muncul

            actions: <Widget>[
              Container(
                height: 40.0,
                width: 400.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset("assets/gologo.png"),
                    Row(children: <Widget>[
                      _point(),
                      Image.asset("assets/point_small.png")
                    ])
                  ],
                ),

              ),

              /*Row(

                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("assets/gologo.png"),
                  Row(children: <Widget>[
                    _point(),
                    Image.asset("assets/point_small.png")
                  ])
                ],
              )*/

              /*GridView.count(
              crossAxisCount: 2,
              //controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: List.generate(2, (index) {
                return Center(
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/gologo.png"),
                      Row(children: <Widget>[
                        _point(),
                        Image.asset("assets/point_small.png")
                      ])
                    ],
                  ),
                );
              }),
            ),*/
              /*Container(
                  decoration: BoxDecoration(color: Colors.grey),

                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset("assets/gologo.png"),
                      Row(children: <Widget>[
                        _point(),
                        Image.asset("assets/point_small.png")
                      ])
                    ],
                  ))*/
            ]
        ),
        bottomNavigationBar: _bottomBar(),
        backgroundColor: Color.fromARGB(255, 242, 242, 244),
        body:
            ListView(shrinkWrap: true, padding: EdgeInsets.all(0.0), children: [
          Container(
              decoration: BoxDecoration(color: Colors.white),
              child: //Container(
                  //margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                  //child:
                  Column(children: [
                _banner(),
                GridView.count(
                  crossAxisCount: 4,
                  //controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List.generate(8, (index) {
                    return Center(
                      child: Column(
                        children: <Widget>[
                          (index==7)?Goicon():
                          GoButton(
                              label: GO_RIDE, img: "assets/go_menu_$index.png")
                        ],
                      ),
                    );
                  }),
                ),
              ]) //)
              ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            height: 250.0,
            child: Column(children: [Text("Ini adalah dummy UI Gojek ")]),
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

    return GridView.count(
      crossAxisCount: 4,
      //controller: new ScrollController(keepScrollOffset: false),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: List.generate(4, (index) {
        return Center(
          child: Column(
            children: <Widget>[
            (index==3)?
              Snackmenu():
            GoIcon(GO_TRANSFER, "assets/menu_$index.png"),
              //,
            ],
          ),
        );
      }),
    );
  }

  Widget _bottomBar() {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _bottomIcon("Home", "assets/go_01.png", null),
          _bottomIcon("Orders", "assets/go_02.png", null),
          _bottomIcon("Help", "assets/go_03.png", null),
          _bottomIcon("Inbox", "assets/go_04.png", null),
          _bottomIcon("Account", "assets/go_05.png", null),
        ],
      ),
    );
  }

  Widget _bottomIcon(String label, asset, Function fun) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(icon: Image.asset(asset), onPressed: fun),
        Text(label)
      ],
    );
  }
}
