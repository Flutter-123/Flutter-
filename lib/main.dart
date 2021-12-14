import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/utilits/routes.dart';
import 'package:flutter_app/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int day = 30;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homRoute: (context) => HomePage(),
      },
    );
  }
} 
