import 'package:flutter/material.dart';
import 'package:gojekdummy/util/constants.dart';

class Snackmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
            icon: Image.asset(GO_MORE_ICON),
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return new Container(
                        child: new Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: new Text(
                                'This is the modal bottom sheet. Click anywhere to dismiss.',
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 24.0))));
                  });
            }),

        Text(
          GO_MORE,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

Widget _menu() {
  return Column(
    children: <Widget>[_banner()],
  );
}

Widget _banner() {
  return Container(
    padding: EdgeInsets.only(top: 10.0),
    height: 150.0,
    child: Column(
      children: <Widget>[],
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color.fromRGBO(51, 102, 204, 1.0)),
    //Colors.blueAccent[400]),
    margin: EdgeInsets.all(16.0),
  );
}

class Tab3Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 300.0)),
        Text("bibibibib"),
        FlatButton(
          child: Text('Cancel'),
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        )
      ],
    );
  }
}
