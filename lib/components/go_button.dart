import 'package:flutter/material.dart';

class GoButton extends StatelessWidget {
  final String label;
  final String img;
  final Color borderColor = Color.fromARGB(255, 242, 242, 244);
  Function func;

  GoButton({@required this.label, this.img, this.func});

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
                      onTap: (){

                      },
                      child: Image(
                        image: AssetImage(img),
                        width: 30.0,
                      ))))),
      Text(label)
    ]);
  }
}
