import 'package:flutter/material.dart';
import 'package:gaming/main.dart';
import 'login.dart';
import 'register.dart';
import 'package:flutter/services.dart';

class Startpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(57, 62, 70, 10),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
                height: MediaQuery.of(context).size.height*0.37,
                width: MediaQuery.of(context).size.width*0.37,
                child: new Image.asset("assets/logo_cutout.png")),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0),
                      child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          child: new Text("Welcome Gamer",
                              style: new TextStyle(
                                  fontSize: 25.0, color: Colors.white))),                    
                  ),
                )
              ],
            ),
            new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [ 
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 0.0),
                              child: Text("Username", style: TextStyle( fontSize: 20, color: Colors.white),),
                            )]
              ),
              new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Expanded(
                              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    child: new TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(),
                    ),
                  ),
                ),
                ),
              ),]
              ),
              new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [ 
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 0.0),
                              child: Text("Password", style: TextStyle( fontSize: 20, color: Colors.white),),
                            )]
              ),
              new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Expanded(
                              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    child: new TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(),
                    ),
                  ),
                ),
                ),
              ),]
              ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0, right: 100.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(title: "Gaming App"),
                            ));
                      },
                      child: new Container(
                        height: 45.0,
                          alignment: Alignment.center,
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Proceed",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black))),
                    ),
                  ),
                )
              ],
            ),
             new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                              child: Text("Dont have an account?", style: TextStyle( fontSize: 18, color: Colors.white54),),
                            )]
              ),
              new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) =>RegisterPage(),
                            ));
                              },
                              child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                              child: Text("Sign Up", style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white),),
                            )
                            )
                            ]
              ),
              new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                              child: IconButton(icon: Icon(Icons.phone,color: Colors.white),iconSize: 26,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                              child: IconButton(icon: Icon(Icons.phone,color: Colors.white),iconSize: 26,),
                            ),]
              ),
          ],
        ),
      ),
    );
  }
}