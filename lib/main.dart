import 'package:flutter/material.dart';
import 'package:flutter_application_1_vs/screens/home_page.dart';
import 'package:flutter_application_1_vs/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // used for passing data

  @override
  Widget build(BuildContext context) {
    int day = 10;
    // num take double + int
    // string s="";
    // bool
    // const
    //  var day=5;automatic detect

    return MaterialApp(
        // home: homepage(),

        themeMode: ThemeMode.light,
        // here if light given then goes to below else dark choose goes to darktheme :

        theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        // ,primaryTextTheme: GoogleFonts.latoTextTheme() not work
        // primary swatch set of colors which chang whole theme wrt color chosse smartly

        darkTheme: ThemeData(
          brightness: Brightness.dark,
          // these are specification of dark theme
        ),
        // initialRoute: "/home",
        routes: {
          "/": (context) => const loginpage(),
          "/home": (context) => homepage(),
          "/login": (context) => loginpage()
        });
    // ui ka kaam
  }
}

// bring vegetables({@required bool thaila ,int rupees=100})
// {
//   // inside curly int rupees means if rupee not pass from main
//   //  them it take default value 100
//   // if written @required then compulosry pass
// }

// ctrl + ,  setting
//  ctrl + shift + y terminal
// ctrl + shift + p command palette
// ctrl + + SIZE INC
//  run f5
//  ctrl + . for wrapping
// ctrl + click for documenatation of any button etc
