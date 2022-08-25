import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
          child: Text(
        "Login page!!",
        style: TextStyle(
          fontSize: 20,
          color: Colors.amber,
          fontWeight: FontWeight.bold,
        ),
        // textAlign: Center,
        // textScaleFactor: 2.0,
      )),
    );
  }
}
