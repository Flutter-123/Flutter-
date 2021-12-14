import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/Item_widget.dart';
import 'package:flutter_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key)
  final int day = 30;
  final dummyList = List.generate(10, (index) => Model.data[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) => ItemWeight(
            item: dummyList[index],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
