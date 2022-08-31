import 'package:flutter/material.dart';
import 'package:flutter_application_1_vs/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 1771;

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),

      body: Center(
        child: Container(child: Text("hello $day Welcome ji")),
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
