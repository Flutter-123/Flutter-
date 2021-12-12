import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer.dart';
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
          child: Text("$day days of Android dev in flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
