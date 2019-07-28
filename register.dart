import 'package:flutter/material.dart';

void main() => runApp(new register());

class register extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
   home: new Home(),
   theme: new ThemeData(
     primarySwatch: Colors.blue
   ),
 );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Stack(
        fit:StackFit.expand, 
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/IMG-20190708-WA0010.jpg"),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          new Form(
            child: new Theme(
              data: new ThemeData(
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
                      labelText: "Enter Phone Number",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Enter Password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Re Enter Password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top:20.0),
                  ),
                  new MaterialButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: new Text("Register"),
                    onPressed: () => {},
                  )
                ],
              ),

            ),
            ),
          )
        ],
      ),
    );
  }
}
 