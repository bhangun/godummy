import 'package:flutter/material.dart';

class GoButton extends StatelessWidget {
  final String label;
  final String img;
  final Color borderColor = Color.fromARGB(255, 242, 242, 244);

  GoButton({@required this.label, this.img});

  BorderSide _border() {
    return BorderSide(color: borderColor, width: 1.0, style: BorderStyle.solid);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        InkWell(
        highlightColor: Colors.red,

          splashColor: Colors.grey,
          onTap: () {
            /*setState(() {
              sampleData.forEach((element) => element.isSelected = false);
              sampleData[index].isSelected = true;
            });*/
            print("<><>><><><");
          },
          child: FlatButton(onPressed: null, child: null)
          /*Container(
            padding: EdgeInsets.only(top: 10.0),
            height: 70.0,
            width: 70.0,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
             // color: Colors.white,
             // shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.elliptical(19.0, 25.0)),
              //BorderRadius.circular(20.0),
              border: Border(
                  top: _border(),
                  right: _border(),
                  bottom: _border(),
                  left: _border()),
            ),
            child: Image(image: AssetImage(img),width: 100.0,),
          )*/
        )
        , Text(label)]
      );

  }
}
