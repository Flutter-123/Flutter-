import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key)
  final int day = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Container(
          child: Text("$day of Android dev in flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
