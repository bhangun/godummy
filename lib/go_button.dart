import 'package:flutter/material.dart';

class GoButton extends StatelessWidget {
  final String label;
  final Color borderColor = Colors.grey;

  GoButton({@required this.label});


  BorderSide _border() {
    return BorderSide(color: borderColor, width: 1.0, style: BorderStyle.solid);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.only(top: 10.0),
        height: 70.0,
        width: 70.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.elliptical(19.0, 25.0)),
          //BorderRadius.circular(20.0),
          border: Border(
              top: _border(),
              right: _border(),
              bottom: _border(),
              left: _border()),
        ),
      ),
      Text(label)
    ]);
  }
}
