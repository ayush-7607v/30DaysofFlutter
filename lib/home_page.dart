import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day=10;

    return Scaffold(
       appBar: AppBar(
        title: Text("catalog app"), 
       ),
        body: Center(
          child: Container(
            child: Text("Lauda $day Welcomehj"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}