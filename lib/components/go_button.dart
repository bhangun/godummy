import 'package:flutter/material.dart';
import 'package:gojekdummy/components/gomap.dart';
import 'package:gojekdummy/util/constants.dart';

class GoButton extends StatelessWidget {

  final int index;
  final BuildContext context;
  final Color borderColor = Color.fromARGB(255, 242, 242, 244);

  GoButton({@required this.index, this.context});

  BorderSide _border() {
    return BorderSide(color: borderColor, width: 1.0, style: BorderStyle.solid);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Material(
          // color: Colors.teal[900],
          child: new Center(
              child: Ink(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(19.0, 25.0)),
                    border: Border(
                        top: _border(),
                        right: _border(),
                        bottom: _border(),
                        left: _border()),
                  ),
                  width: 65.0,
                  height: 65.0,
                  child: InkWell(
                      highlightColor: Colors.grey[10],
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(19.0, 25.0)),
                      splashColor: Colors.grey,
                      onTap: action(index),
                      child: Image(
                        image: AssetImage("assets/go_menu_$index.png"),
                        width: 30.0,
                      ))))),
      Text(caption[index])
    ]);
  }

  Function action(int index){
    switch (index) {
      case 0:
        return () {
          Navigator.push(
              context,
              new MaterialPageRoute(builder: (ctxt) => Goride())
          );
        };
        break;
      /*case 1:
        return GO_RIDE;
        break;
      case 2:
        return GO_RIDE;
        break;
      case 3:
        return GO_RIDE;
        break;
      case 4:
        return GO_RIDE;
        break;*/
      default:
        return null;
    }

  }

}
