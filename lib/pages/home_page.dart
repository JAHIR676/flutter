import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 30;
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Sign Up"),
      )),
      body: Center(
        child: Text("Welcome flutter $day challange"),
      ),
    );
  }
}
