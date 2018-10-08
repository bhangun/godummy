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
             /* Navigator.of(context, rootNavigator: true).push(
                new MaterialPageRoute<bool>(

                  fullscreenDialog: false,
                  builder: (BuildContext context) => new Tab3Dialog(),
                ),
              );*/

   /*           Scaffold.of(context).showBottomSheet((context) {
                print(context.toString());
                _banner();
              });*/
   print(context..toString());

              Scaffold.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.white,
                content: _menu(),

                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change!
                  },
                ),
              ));

            }
            ),
        Text(
          GO_MORE,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

Widget _menu(){
  return Column(
    children:<Widget>[
      _banner()

    ] ,
  );
}


Widget _banner() {
  return Container(
    padding: EdgeInsets.only(top: 10.0),
    height: 150.0,
    child: Column(
      children: <Widget>[

      ],
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
return new Column(
  children: <Widget>[
    Text("bibibibib"),
    FlatButton(
      child:  Text('Cancel'),
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.of(context).pop(false);
      },
    )
  ],
);
}
}
