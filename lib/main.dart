import 'package:flutter/material.dart';
import 'package:mobiledemo/HomePage.dart';
import 'package:mobiledemo/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter storage reference"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            FlatButton(
              color: Colors.blue,
                textColor: Colors.white,
                onPressed: ()async{
                bool check=await storageget();
                storageset();
                if(check==true){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                }
                else{
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                }


                }, child: Text("Check status")
            )
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
  storageget()async{
    final prefs=await SharedPreferences.getInstance();
    bool ok=prefs.getBool("ok")??false;
    return ok;
  }
  storageset()async{
    final prefs= await SharedPreferences.getInstance();
    prefs.setBool("ok", true);
  }

}
