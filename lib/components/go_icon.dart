import 'package:flutter/material.dart';

class GoIcon extends StatelessWidget{
  final String label;
  final String asset;
  GoIcon(this.label,this.asset);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(icon: Image.asset(asset) , onPressed: null),
        Text(label,style: TextStyle(color: Colors.white),)
      ],
    );
  }
}