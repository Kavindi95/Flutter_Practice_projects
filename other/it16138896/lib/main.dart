import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

//first interface
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pic1.JPG"), fit: BoxFit.cover),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text("Treva Shop",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white)),
          ),
          Container(
            alignment: Alignment.bottomRight,
              child: RaisedButton(
                child: new Text("Direct to reviews",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)
                ),
                //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0), )
              )
          ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(//row 1
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child:  Text("Get best product in treva shop",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                          color: Colors.white)),
                ),
              ],
            ),
            Row(//row 2
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: RaisedButton(
                      child: new Text("SignUp",  style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),),
                      onPressed: null,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)
                      ),
                      //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0), )
                    )
                ),
              ],
            ),
            Row( //row 3
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child:  Text("-----------OR SKIP-------------",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                          color: Colors.white)),
                ),
              ],
            ),
            Row(//row 4
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: RaisedButton(
                      child: new Text("Login",  style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondRoute()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)
                      ),
                      //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0), )
                  )
                ),
              ],
            )
          ],
        ),
        ],
      ),
      );
  }
}

//second interface
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pic2.JPG"), fit: BoxFit.cover),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text("Treva Shop",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(//row 1
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: RaisedButton(
                        child: new Text("Login With Facebook",  style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),),
                        color: Colors.blue,
                        disabledColor: Colors.blue,
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue)
                        ),
                        //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0), )
                      )
                  ),
                ],
              ),
              Row(//row 2
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: RaisedButton(
                        child: new Text("Login With Google",  style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),),
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0), )
                      )
                  ),
                ],
              ),
              Row(//row 3
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child:  Text("OR",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                            color: Colors.white)),
                  ),
                ],
              ),
              Row(//row 4
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: RaisedButton(
                        child: new Text("Email                 ",  style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),),
                        onPressed:null,
                        color: Colors.white,
                        disabledColor: Colors.white,
                      )
                  ),
                ],
              ),
              Row(//row 5
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: RaisedButton(
                        child: new Text("Password                 ",  style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),),
                        onPressed:null,
                        color: Colors.white,
                        disabledColor: Colors.white,
                      )
                  ),
                ],
              ),
              Row( //row 6
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child:  Text("Not Have Account? Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10.0,
                            color: Colors.white)),
                  ),
                ],
              ),
              Row(//row 7
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: RaisedButton(
                        child: new Text("Login",  style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0), )
                      )
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

//third interface
class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/images/five_stars.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,),
            Image.asset('assets/images/reviews_1.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,),
            Image.asset('assets/images/reviews_2.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,),
            Image.asset('assets/images/reviews_3.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,)
          ],

        ),
      ),
    );
  }
}
