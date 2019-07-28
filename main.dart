 import 'package:flutter/material.dart';
 import './register.dart';

void main() => runApp(new myapp());

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/IMG-20190708-WA0010.jpg"),
            fit: BoxFit.cover,
            color:Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          new Form(
            child: new Theme(
              data:new ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.teal,
                inputDecorationTheme: new InputDecorationTheme(
                  labelStyle: new TextStyle(
                    color: Colors.teal,
                    fontSize: 20.0
                  )
                )
              ),
              child: Container(
                padding: const EdgeInsets.all(40.0),
                   child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   new TextFormField(
                    decoration: new InputDecoration(
                      labelText:"Enter Username",
                    ),
                    keyboardType:TextInputType.emailAddress,
                  ),
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText:"Enter Password",
                    ),
                    keyboardType:TextInputType.text,
                    obscureText: true,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top:20.0),
                  ),
                  new MaterialButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: new Text("Login"),
                    onPressed: () => {},
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top:40.0),
                  ),
                  new MaterialButton(
                    textColor: Colors.white,
                    child: new Text("Create new Account"),
                    onPressed: () => Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => register()
                      )),
                  ),
                ],
            ),
              ),
            ),
          )
        ],
      )
    );
  }
}
