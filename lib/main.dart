import 'package:flutter/material.dart';
import 'package:flutter_application_1_vs/Utils/Routes.dart';
import 'package:flutter_application_1_vs/screens/home_page.dart';
import 'package:flutter_application_1_vs/screens/login_page.dart';
import 'package:flutter_application_1_vs/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

// In order to write any Dart program, be it a script or a Flutter app,
//  you must define a function called main.
// You must have exactly one main function in your program.

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

        theme: Mytheme.lightTheme(context),
        darkTheme: Mytheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        // help remove debug banner from app

        // ,primaryTextTheme: GoogleFonts.latoTextTheme() not work
        // primary swatch set of colors which chang whole theme wrt color chosse smartly

        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        //   // these are specification of dark theme
        // ),
        initialRoute: MyRouteshere.homeroute,
        routes: {
          "/": (context) => const loginpage(),
          MyRouteshere.homeroute: (context) => homepage(),
          MyRouteshere.loginroute: (context) => loginpage()
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
//  ctrl + spacebar for options when hover over element wale



// When you use git Visual Studio Code sync with it and shows which files are modified / untracked etc.
// There are markers like:
// U - Untracked
// A - Added
// D - Deleted
// C - Conflict
// R - Renamed
// S - Submodule
// M - Modified 'U' stands for untracked file, meaning a file that is new or changed but has not yet been added to the repository.


// Hot reload = loads code changes into the VM and re-builds the widget tree, preserving the app state; it doesn’t rerun main() or initState(). (⌘\ in Intellij and Android Studio, ⌃F5 in VSCode)
// Hot restart = loads code changes into the VM, and restarts the Flutter app, losing the app state. (⇧⌘\ in IntelliJ and Android Studio, ⇧⌘F5 in VSCode)
// Full restart = restarts the iOS, Android, or web app. This takes longer because it also recompiles the Java / Kotlin / ObjC / Swift code. On the web, it also restarts the Dart Development Compiler. 
