import 'package:flutter/material.dart';
import 'package:flutter_app/utilits/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assestes/images/undraw_secure_login_pdn4.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome To My Secure Login",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homRoute);
                },
                // style: ButtonStyle(
                //   foregroundColor:
                // ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: TextButton.styleFrom(minimumSize: Size(150, 50)),
              ),
            )
          ]),
        ));
  }
}
