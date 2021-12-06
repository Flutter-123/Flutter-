import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utilits/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
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
            Text(
              "$name",
              style: TextStyle(color: Colors.orange, fontSize: 15),
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
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
            InkWell(
                onTap: () async {
                  setState(() {
                    changebutton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changebutton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changebutton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                  ),
                )),
            // Padding(
            //   padding: const EdgeInsets.only(top: 16.0),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoutes.homRoute);
            //     },

            //     child: Text(
            //       "Login",
            //       style: TextStyle(
            //         fontSize: 20,
            //       ),
            //     ),
            //     style: TextButton.styleFrom(minimumSize: Size(150, 50)),
            //   ),
            // )
          ]),
        ));
  }
}
