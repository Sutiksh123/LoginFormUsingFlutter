import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  LoginFormState();
  }

}

class  LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      backgroundColor: Colors.blueGrey,

      body: new Container(
    alignment: Alignment.topCenter,
    child: new Column(
    children: <Widget>[
      new Image.asset(
          'images/face.png',
          width: 90.0,
          height: 90.0 ,
        color: Colors.white,
      ),

    ],
    ),
    )
    );
  }
}