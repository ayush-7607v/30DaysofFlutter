// ctrl + ,  setting
//  ctrl + shift + y terminal
// ctrl + shift + p command palette
// ctrl + + SIZE INC
//  run f5
import 'package:flutter/material.dart';
import 'package:flutter_application_1_vs/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // used for passing data

  @override
  Widget build(BuildContext context) {

    int day=10;
    // num take double + int
    // string s="";
    // bool
    // const
    //  var day=5;automatic detect

    return MaterialApp(
      home: homepage(),
    );
    // ui ka kaam
  }
}
