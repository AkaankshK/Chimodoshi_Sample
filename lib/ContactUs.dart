
import 'dart:convert';

import 'package:chimodoshisample/location.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  Position _currentPosition;
  double lat;
  double lon;
  String url = "http://chimodoshi.com/api/location.php";


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            if (_currentPosition != null)
              Text(
                  "LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}"),
            RaisedButton(
              color: Colors.red,
              child: Text("Send location",style: TextStyle(color: Colors.white),),
              onPressed: () {
                _getCurrentLocation();
              },
            ),

          ],
        ),
      ),
    );
  }


  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        lat=position.latitude;
        lon=position.longitude;
        sendLocation(lat,lon);

      });
    }).catchError((e) {
      print(e);
    });
  }

  void sendLocation(double lat, double lon) async {
    var data= json.encode({
      "lat": lat,
      "lon": lon,
    });

    var response= http.post(url,body: data);
    if (response != null){
      //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Success()), (Route<dynamic> route) => false);
      Navigator.push(context,MaterialPageRoute(builder: (context) => Success(lat: lat, lon: lon,)));
    }
  }

  

}

