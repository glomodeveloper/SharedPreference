import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text("Welcome to HomePage",style:
            TextStyle(
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
