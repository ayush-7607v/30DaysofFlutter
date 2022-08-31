import 'package:flutter/material.dart';
import 'package:flutter_application_1_vs/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 10;

    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
        backgroundColor: Color.fromARGB(255, 3, 156, 176),
      ),

      body: Center(
        child: Container(child: Text("hello $day Welcomc ehj")),
      ),
      // body: Center(
      //   child: Container(
      //     child: Text("Lauda $day Welcomehj"),
      //   ),
      // ),
      drawer: MyDrawer(),
    );
  }
}
