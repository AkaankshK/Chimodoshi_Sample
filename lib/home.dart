import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0), child: Text("What we offer",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.cyan
              ),
              )),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Our Services",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600
                ),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Whether it’s a medical emergency, need of restrooms or restaurant or any transport related issues or any other emergency we are here for you.",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.0
                  ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    elevation: 15.0,
                    color: Colors.redAccent,
                    child: FittedBox(
                      fit: BoxFit.fill,

                      

                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset('assets/images/hygenicfood.jpg'))

                      
                    ),
                  ),
                ),
              ),

              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),

                    elevation: 15.0,
                    color: Colors.redAccent,
                    child: FittedBox(

                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/lactation.jpg')),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    elevation: 15.0,
                    color: Colors.redAccent,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/washroom.jpg')),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    elevation: 15.0,
                    color: Colors.redAccent,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/humanhealer.jpg')),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    elevation: 15.0,
                    color: Colors.redAccent,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/chillpill.jpg')),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    elevation: 15.0,
                    color: Colors.redAccent,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/carcrash.jpg')),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    elevation: 15.0,
                    color: Colors.redAccent,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/backpack.jpg')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
