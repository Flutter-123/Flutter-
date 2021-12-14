import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/Item_widget.dart';
import 'package:flutter_app/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key)
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int day = 30;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assestes/files/products.json");
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    Model.data =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  // final dummyList = List.generate(10, (index) => Model.data[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: Model.data.length,
          itemBuilder: (context, index) => ItemWeight(
            item: Model.data[index],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
