import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  LoginFormState();
  }

}

class  LoginFormState extends State<LoginForm> {

  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
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

      new Container(
        width: 380.0,
        height: 180.0,
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: _userController,
              decoration: new InputDecoration(
                hintText: 'Username',
                icon: new Icon(Icons.person)
              ),
            ),

            new TextField(
              controller: _passwordController,
              decoration: new InputDecoration(
                  hintText: 'Password',
                  icon: new Icon(Icons.lock)
              ),
            ),

            new Padding(padding: EdgeInsets.all(10.5)),
            new Center(
            child: new Row(
              children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(left: 38.5),
                child: new RaisedButton(
                    onPressed: () => debugPrint("Submitted!!"),
                    child: new Text("Submit", style: new TextStyle(color: Colors.white,fontSize: 16.9),),
                    color: Colors.redAccent,),
            ),
              new Container(
              margin: const EdgeInsets.only(left: 120.0),
               child: new RaisedButton(
                onPressed: () => debugPrint("All Clear!!"),
                child: new Text("Reset", style: new TextStyle(color: Colors.white,fontSize: 16.9),),
                color: Colors.redAccent,),
              )

                     
              ],
            )
            ),
          ],
        ),
      )

    ],
    ),
    )
    );
  }
}
