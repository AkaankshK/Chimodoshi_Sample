

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {

final double lat;
final double lon;

Success({Key key, @required this.lat, @required this.lon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                "LAT: $lat, LNG: $lon"),
            Text("Location Sent")
          ],
        ),
      ),
    );
  }
}
