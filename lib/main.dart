import 'package:flutter/material.dart';
import 'package:gojekdummy/components/splash.dart';
import 'package:gojekdummy/home.dart';
import 'package:gojekdummy/util/constants.dart';
import 'package:map_view/map_view.dart';


void main(){
  MapView.setApiKey(API_KEY);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Go Dummy',
      theme: new ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'NeoSansPro'
      ),
      home: SplashScreen(
            seconds: 5,
            navigateAfterSeconds: MyHomePage(title: 'Gojek'),
            image:  Image.asset('assets/gologo.png'),
            backgroundColor: Colors.white,
            //photoSize: 300.0,
            onClick: ()=>print("Flutter Egypt"),
        )
    );
  }
}


