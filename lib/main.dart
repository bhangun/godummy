import 'package:flutter/material.dart';
import 'package:gojekdummy/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'NeoSansPro'
      ),
      home: SplashScreen(
            seconds: 5,
            navigateAfterSeconds: MyHomePage(title: 'Gojek'),
            title: new Text('Welcome In SplashScreen',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),),
            image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 100.0,
            onClick: ()=>print("Flutter Egypt"),
            loaderColor: Colors.red
        )
    );
  }
}


