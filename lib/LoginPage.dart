import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text("Welcome to login Screen",
            style: TextStyle(
              fontSize: (30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),)
          ],
        ),
      ),
    );
  }
}
