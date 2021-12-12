import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/utilits/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int day = 30;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homRoute: (context) => HomePage(),
      },
    );
  }
}
