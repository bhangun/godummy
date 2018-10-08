import 'package:flutter/material.dart';

class GoIcon extends StatelessWidget{
  final String label;
  final String asset;
  final Function func;
  final BuildContext con;
  GoIcon(this.label,this.asset,{this.func,this.con});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(icon: Image.asset(asset) , onPressed: _more ),
        Text(label,style: TextStyle(color: Colors.white),)
      ],
    );
  }

  void _more(){
    Scaffold.of(con).showSnackBar(SnackBar(
      content: Center(
        child: Text("sdsdfsdfsd"),
      ),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    ));
  }
}