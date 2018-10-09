import 'package:flutter/material.dart';
import 'package:gojekdummy/components/go_button.dart';
import 'package:gojekdummy/components/go_icon.dart';
import 'package:gojekdummy/util/constants.dart';

class Goicon extends StatelessWidget {
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
                        child:  Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: _menu()
                        )
                    );
                  });
            }),
        Text(
          GO_MORE,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }


  Widget _menu() {

    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 0.0,
      // Generate 100 Widgets that display their index in the List
      children: List.generate(6, (index) {
        return Center(
          child:
          Column(
            children: <Widget>[
              IconButton(icon: Image.asset("assets/go_menu_0$index.png") , onPressed: null ),
              Text("aaa$index",style: TextStyle())
            ],
          )
          ,
        );
      }),
    );
  }

}


